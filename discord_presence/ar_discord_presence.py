"""Abstract Reordered: Discord Rich Presence companion.

Started by "Abstract Reordered (Discord).bat". It launches Ikemen_GO.exe, reads the status file
that external/mods/ar_presence.lua writes (save/ar_presence.json) and shows it on Discord.
It exits when the game closes. If Discord or pypresence is missing, the game still runs normally.
"""
import json
import os
import subprocess
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
GAME = os.path.join(ROOT, "Ikemen_GO.exe")
STATUS = os.path.join(ROOT, "save", "ar_presence.json")
CONFIG = os.path.join(HERE, "config.json")
LOG = os.path.join(HERE, "presence.log")

MIN_UPDATE_GAP = 5.0     # Discord allows about 5 updates per 20 s
RECONNECT_GAP = 15.0
POLL = 1.0


def log(msg):
    try:
        if os.path.exists(LOG) and os.path.getsize(LOG) > 200_000:
            os.replace(LOG, LOG + ".old")
        with open(LOG, "a", encoding="utf-8") as f:
            f.write(time.strftime("%Y-%m-%d %H:%M:%S ") + msg + "\n")
    except OSError:
        pass


def load_config():
    cfg = {
        "client_id": "",
        "large_image": "logo",
        "large_text": "Abstract Reordered",
        "character_images": False,
        "character_image_map": {},
        "show_stage": True,
        "buttons": [],
    }
    try:
        with open(CONFIG, encoding="utf-8") as f:
            cfg.update(json.load(f))
    except (OSError, ValueError) as e:
        log(f"config: {e}")
    return cfg


def read_status():
    try:
        with open(STATUS, encoding="utf-8") as f:
            text = f.read().strip()
        # parse the first JSON object only, ignoring any leftover bytes after it
        obj, _ = json.JSONDecoder().raw_decode(text)
        return obj if isinstance(obj, dict) else None
    except (OSError, ValueError):
        return None   # missing, or caught mid-write; try again next poll


def clip(s, n=128):
    s = (s or "").strip()
    if len(s) > n:
        s = s[: n - 1] + "…"
    if 0 < len(s) < 2:
        s += " "
    return s or None


def char_image(cfg, key):
    if not cfg.get("character_images") or not key:
        return None
    mapped = cfg.get("character_image_map", {}).get(key)
    if mapped:
        return mapped
    # only characters with an uploaded image (discord_presence/art/<key>.png); others keep the logo
    if os.path.exists(os.path.join(HERE, "art", key + ".png")):
        return key
    return None


def build(cfg, st):
    """Turn the game's status into pypresence.update() arguments."""
    state = st.get("state", "menu")
    mode = st.get("mode", "")
    mode_id = st.get("mode_id", "")
    p1, p2 = st.get("p1", ""), st.get("p2", "")
    stage = st.get("stage", "") if cfg.get("show_stage", True) else ""
    rnd, match = st.get("round", 0), st.get("match", 0)
    vs = f"{p1} vs {p2}" if p1 and p2 else (p1 or p2)
    solo = mode_id == "training"

    a = {
        "large_image": cfg.get("large_image") or None,
        "large_text": clip(cfg.get("large_text")),
    }
    if st.get("since"):
        a["start"] = int(st["since"])

    def where(*extra):
        bits = [b for b in (mode,) + extra if b]
        return " · ".join(bits)

    match_txt = f"Match {match}" if match and mode_id in ("arcade", "survival", "bossrush", "vs100kumite") else ""

    if state == "menu":
        a["details"] = "In the Main Menu"
    elif state == "options":
        a["details"] = "Changing Options"
    elif state == "select":
        a["details"] = "Character Select"
        a["state"] = mode
    elif state in ("versus", "fight", "paused", "postmatch"):
        if solo:
            a["details"] = f"Training as {p1}" if p1 else "Training"
        else:
            a["details"] = vs or "Fighting"
        if state == "versus":
            a["state"] = where(match_txt, "Get Ready")
        elif state == "fight":
            a["state"] = where(match_txt, f"Round {rnd}" if rnd and not solo else "")
        elif state == "paused":
            a["state"] = where("Paused")
        else:
            w = st.get("winner")
            a["state"] = where(f"{w} wins" if w else "Match over")
        if stage:
            a["large_text"] = clip(stage)
        img = char_image(cfg, st.get("p1_key"))
        if img:
            a["large_image"] = img
            a["large_text"] = clip(p1 + (f" — {stage}" if stage else ""))
        img2 = char_image(cfg, st.get("p2_key"))
        if img2 and not solo:
            a["small_image"] = img2
            a["small_text"] = clip(p2)
    else:
        a["details"] = "Playing"

    a["details"] = clip(a.get("details"))
    if "state" in a:
        a["state"] = clip(a["state"])
    if cfg.get("buttons"):
        a["buttons"] = cfg["buttons"][:2]
    return {k: v for k, v in a.items() if v is not None}


def main():
    args = sys.argv[1:]
    try:
        os.remove(STATUS)   # don't show a stale state from last session
    except OSError:
        pass

    # Start the game first, before anything that could fail.
    game = subprocess.Popen([GAME] + args, cwd=ROOT)
    log(f"game started (pid {game.pid})")

    cfg = load_config()
    client_id = str(cfg.get("client_id", "")).strip()
    try:
        from pypresence import Presence
    except ImportError:
        Presence = None
        log("pypresence is not installed; run: python -m pip install pypresence")
    if not client_id or not client_id.isdigit():
        log("no Discord Application ID in config.json; presence disabled")
        Presence = None

    rpc = None
    last_try = 0.0
    last_sent = None
    last_send_time = 0.0
    pending = None

    while game.poll() is None:
        time.sleep(POLL)
        if Presence is None:
            continue
        now = time.time()

        if rpc is None and now - last_try >= RECONNECT_GAP:
            last_try = now
            try:
                rpc = Presence(client_id)
                rpc.connect()
                last_sent = None
                log("connected to Discord")
            except Exception as e:   # Discord not running, pipe busy, etc.
                rpc = None
                log(f"connect failed: {e!r}")
        if rpc is None:
            continue

        st = read_status()
        if st is not None:
            pending = build(cfg, st)
        if pending is None or pending == last_sent or now - last_send_time < MIN_UPDATE_GAP:
            continue
        try:
            rpc.update(pid=game.pid, **pending)
            last_sent = pending
            last_send_time = now
        except Exception as e:   # Discord closed: drop and reconnect later
            log(f"update failed: {e!r}")
            try:
                rpc.close()
            except Exception:
                pass
            rpc = None

    log(f"game closed (exit {game.returncode})")
    if rpc is not None:
        try:
            rpc.clear()
            rpc.close()
        except Exception:
            pass


if __name__ == "__main__":
    try:
        main()
    except Exception as e:
        log(f"fatal: {e!r}")
