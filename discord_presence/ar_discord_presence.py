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
        "lobby": True,
        "lobby_name": "",
        "lobby_port": 7510,
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


def build(cfg, st, lobby=None):
    """Turn the game's status (and the online lobby's, if running) into pypresence.update() arguments."""
    state = st.get("state", "menu")
    mode = st.get("mode", "")
    mode_id = st.get("mode_id", "")
    p1, p2 = st.get("p1", ""), st.get("p2", "")
    stage = st.get("stage", "") if cfg.get("show_stage", True) else ""
    rnd, match = st.get("round", 0), st.get("match", 0)
    vs = f"{p1} vs {p2}" if p1 and p2 else (p1 or p2)
    solo = mode_id == "training"

    # online match set up through the lobby: show both players' names with their characters
    n1 = n2 = ""
    if mode_id.startswith("netplay") and lobby is not None and lobby.online:
        me, opp = lobby.name, lobby.online["opp"]
        n1, n2 = (me, opp) if lobby.online.get("side", 1) == 1 else (opp, me)
        if p1 and p2:
            vs = f"{n1} ({p1}) vs {n2} ({p2})"
        else:
            vs = f"{n1} vs {n2}"

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

    if state in ("menu", "options") and lobby is not None and lobby.searching:
        a["details"] = "Matchmaking"
        a["state"] = "Searching for an opponent"
        a["start"] = int(lobby.search_since)
    elif state in ("menu", "options") and lobby is not None and lobby.lobby_open:
        a["details"] = "In the Online Lobby"
        n = len(lobby.peers)
        a["state"] = f"{n} player{'s' if n != 1 else ''} online"
    elif state == "menu":
        a["details"] = "In the Main Menu"
    elif state == "options":
        a["details"] = "Changing Options"
    elif state == "select":
        a["details"] = f"Online: {n1} vs {n2}" if n1 else "Character Select"
        a["state"] = "Character Select" if n1 else mode
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
            if w and n1:   # name the player, not just the character
                w = f"{n1} ({w})" if w == p1 else (f"{n2} ({w})" if w == p2 else w)
            a["state"] = where(f"{w} wins" if w else "Match over")
        if stage:
            a["large_text"] = clip(stage)
        img = char_image(cfg, st.get("p1_key"))
        if img:
            a["large_image"] = img
            a["large_text"] = clip((f"{n1}: " if n1 else "") + p1 + (f" — {stage}" if stage else ""))
        img2 = char_image(cfg, st.get("p2_key"))
        if img2 and not solo:
            a["small_image"] = img2
            a["small_text"] = clip((f"{n2}: " if n2 else "") + p2)
    else:
        a["details"] = "Playing"

    a["details"] = clip(a.get("details"))
    if "state" in a:
        a["state"] = clip(a["state"])
    if cfg.get("buttons"):
        a["buttons"] = cfg["buttons"][:2]
    return {k: v for k, v in a.items() if v is not None}


def single_instance():
    """True if no other copy of this script is running (named mutex, freed when we exit)."""
    try:
        import ctypes
        k32 = ctypes.WinDLL("kernel32", use_last_error=True)
        k32.CreateMutexW.restype = ctypes.c_void_p
        h = k32.CreateMutexW(None, False, r"Local\AbstractReorderedDiscordPresence")
        single_instance.handle = h   # keep it open for the life of the process
        return ctypes.get_last_error() != 183   # ERROR_ALREADY_EXISTS
    except Exception:
        return True


class RunningGame:
    """The already-running Ikemen_GO.exe of this folder (attach mode, started by the game itself)."""
    SYNCHRONIZE, QUERY = 0x00100000, 0x1000

    def __init__(self):
        import ctypes
        from ctypes import wintypes
        self.ct, self.wt = ctypes, wintypes
        self.k32 = ctypes.WinDLL("kernel32", use_last_error=True)
        self.k32.OpenProcess.restype = wintypes.HANDLE
        self.pid, self.handle = None, None
        want = os.path.normcase(os.path.abspath(GAME))
        for pid in self._pids():
            h = self.k32.OpenProcess(self.SYNCHRONIZE | self.QUERY, False, pid)
            if not h:
                continue
            buf = ctypes.create_unicode_buffer(1024)
            n = wintypes.DWORD(len(buf))
            if self.k32.QueryFullProcessImageNameW(h, 0, buf, ctypes.byref(n)) and                     os.path.normcase(buf.value) == want:
                self.pid, self.handle = pid, h
                break
            self.k32.CloseHandle(h)

    def _pids(self):
        ct, wt = self.ct, self.wt
        arr = (wt.DWORD * 8192)()
        got = wt.DWORD()
        ct.WinDLL("psapi").EnumProcesses(ct.byref(arr), ct.sizeof(arr), ct.byref(got))
        return [p for p in arr[: got.value // ct.sizeof(wt.DWORD)] if p]

    def poll(self):
        if not self.handle:
            return 0
        return None if self.k32.WaitForSingleObject(self.handle, 0) == 0x102 else 0   # WAIT_TIMEOUT = alive

    @property
    def returncode(self):
        return self.poll()


def main():
    args = sys.argv[1:]
    attach = "--attach" in args
    args = [a for a in args if a != "--attach"]
    first = single_instance()

    if attach:
        # Started by external/mods/ar_presence.lua when Ikemen_GO.exe was opened directly.
        if not first:
            return   # the .bat (or an earlier start) already runs presence
        game = None
        for _ in range(20):
            game = RunningGame()
            if game.pid:
                break
            time.sleep(0.5)
        if not game or not game.pid:
            log("attach: Ikemen_GO.exe of this folder not found")
            return
        log(f"attached to running game (pid {game.pid})")
    else:
        try:
            os.remove(STATUS)   # don't show a stale state from last session
        except OSError:
            pass
        # Start the game first, before anything that could fail.
        game = subprocess.Popen([GAME] + args, cwd=ROOT)
        log(f"game started (pid {game.pid})")
        if not first:
            log("presence already running elsewhere; just launching the game")
            return

    cfg = load_config()
    lobby = None
    try:
        if cfg.get("lobby", True):
            from ar_lobby import Lobby
            name = cfg.get("lobby_name") or os.environ.get("USERNAME") or "Player"
            lobby = Lobby(ROOT, name, log,
                  port=int(os.environ.get("AR_LOBBY_PORT", cfg.get("lobby_port", 7510))),
                  send_port=int(os.environ.get("AR_LOBBY_SEND_PORT", 0)) or None)
            lobby.start()
    except Exception as e:
        log(f"lobby failed to start: {e!r}")

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
            pending = build(cfg, st, lobby)
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
