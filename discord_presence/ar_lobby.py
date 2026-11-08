"""Abstract Reordered: online lobby over LAN / Radmin VPN.

Runs as a thread inside ar_discord_presence.py (the companion that starts with the game).
- Every 2 s it announces itself with a UDP broadcast on every network adapter (Radmin VPN acts as a LAN),
  and also sends straight to the IPs saved in save/config.ini [Netplay] IP.* entries.
- It keeps a list of other players running the build, and handles challenges.
- It talks to the game through two small files:
    save/ar_lobby.txt      (written here, read by external/mods/ar_lobby.lua)
    save/ar_lobby_cmd.txt  (written by the Lua side: challenge / accept / decline / cancel / lobby open)
The game itself does the netplay: the player who accepts hosts, the challenger joins.
"""
import hashlib
import json
import os
import random
import re
import socket
import threading
import time

APP = "AbstractReordered"
PROTO = 1
HELLO_EVERY = 2.0
PEER_TIMEOUT = 7.0
CHALLENGE_TIMEOUT = 25.0


def _clean(s, n=24):
    s = re.sub(r"[\t\r\n\\]", " ", str(s or "")).strip()
    return s[:n] or "Player"


class Lobby(threading.Thread):
    def __init__(self, root, name, log, port=7510, send_port=None):
        super().__init__(daemon=True)
        self.root = root
        self.log = log
        self.port = port
        self.send_port = send_port or port            # differs only when testing two copies on one PC
        self.out_file = os.path.join(root, "save", "ar_lobby.txt")
        self.cmd_file = os.path.join(root, "save", "ar_lobby_cmd.txt")
        self.status_file = os.path.join(root, "save", "ar_presence.json")
        self.id = "%08x" % random.getrandbits(32)
        self.name = _clean(name)
        self.build = ""
        self.peers = {}        # id -> {name, ip, status, build, last}
        self.incoming = None   # {cid, id, name, ip, t}
        self.outgoing = None   # {cid, id, name, ip, state, port, t}
        self.lobby_open = False
        self.searching = False   # matchmaking on
        self.search_since = 0.0
        self.match = None        # matchmaking found us an opponent and we host: {name, ip}
        self.mm_skip = {}        # peer id -> time; don't re-try a peer that just failed
        self.online = None       # last match set up here: {"opp": name, "id": peer id, "side": 1 host / 2 joiner}
        self.next_ping = 0.0
        self.last_seq = None
        self.last_written = None
        self.stop_flag = False
        self.sock = None

    # ---------------------------------------------------------------- helpers
    def listen_port_of_game(self):
        try:
            with open(os.path.join(self.root, "save", "config.ini"), encoding="utf-8", errors="ignore") as f:
                m = re.search(r"^\s*ListenPort\s*=\s*(\d+)", f.read(), re.M)
                return int(m.group(1)) if m else 7500
        except OSError:
            return 7500

    def saved_ips(self):
        ips = []
        try:
            with open(os.path.join(self.root, "save", "config.ini"), encoding="utf-8", errors="ignore") as f:
                for m in re.finditer(r"^\s*IP\.[^=]+=\s*([\d.]+)", f.read(), re.M):
                    if not m.group(1).startswith("127."):
                        ips.append(m.group(1))
        except OSError:
            pass
        return ips

    def local_ips(self):
        try:
            return sorted({a[4][0] for a in socket.getaddrinfo(socket.gethostname(), None, socket.AF_INET)})
        except OSError:
            return []

    def game_status(self):
        """menu / lobby / playing / online, from the presence status the game writes."""
        if self.searching:
            return "searching"
        if self.lobby_open:
            return "lobby"
        try:
            with open(self.status_file, encoding="utf-8") as f:
                st, _ = json.JSONDecoder().raw_decode(f.read().strip())
        except (OSError, ValueError):
            return "menu"
        if str(st.get("mode_id", "")).startswith("netplay"):
            return "online"
        return "menu" if st.get("state") in ("menu", "options") else "playing"

    def compute_build(self):
        """Fingerprint of the gameplay files, so players can see if their builds match."""
        h = hashlib.sha1()
        exts = (".def", ".cns", ".st", ".cmd", ".air", ".zss")
        files = []
        for top in ("chars", "stages"):
            base = os.path.join(self.root, top)
            for d, _, names in os.walk(base):
                for n in names:
                    if n.lower().endswith(exts):
                        files.append(os.path.join(d, n))
        files.append(os.path.join(self.root, "data", "select.def"))
        for p in sorted(files, key=lambda p: os.path.relpath(p, self.root).lower()):
            try:
                with open(p, "rb") as f:
                    h.update(os.path.relpath(p, self.root).lower().replace("\\", "/").encode())
                    h.update(f.read())
            except OSError:
                pass
        self.build = h.hexdigest()[:12]
        self.log(f"lobby: build fingerprint {self.build} ({len(files)} files)")

    def send(self, msg, ip):
        msg = dict(msg, app=APP, v=PROTO, id=self.id, name=self.name)
        if ip in self.local_ips():
            ip = "127.0.0.1"     # a VPN adapter does not loop packets back to its own address
        try:
            self.sock.sendto(json.dumps(msg).encode(), (ip, self.send_port))
        except OSError:
            pass

    def refresh_name(self):
        """Player name from save/ar_profile.txt (set in game: first launch, or Options > Netplay Settings)."""
        try:
            with open(os.path.join(self.root, "save", "ar_profile.txt"), encoding="utf-8", errors="ignore") as f:
                m = re.search(r"^name=(.*)$", f.read(), re.M)
            if m and m.group(1).strip():
                self.name = _clean(m.group(1), 20)
        except OSError:
            pass

    def ping_peers(self):
        """Once a second, ping every known player (the opponent's ping sets the rollback delay)."""
        now = time.time()
        if now < self.next_ping:
            return
        self.next_ping = now + 1.0
        for p in list(self.peers.values()):
            self.send({"t": "ping", "ts": time.perf_counter()}, p["ip"])

    def broadcast_hello(self):
        self.refresh_name()
        msg = json.dumps({"app": APP, "v": PROTO, "t": "hello", "id": self.id, "name": self.name,
                          "status": self.game_status(), "build": self.build}).encode()
        targets = set(self.saved_ips()) | {p["ip"] for p in self.peers.values()}
        for ip in targets:
            try:
                self.sock.sendto(msg, (ip, self.send_port))
            except OSError:
                pass
        for local in self.local_ips():
            if local.startswith("127."):
                continue
            dests = ["255.255.255.255"]
            if local.startswith("26."):                  # Radmin VPN is a /8
                dests.append("26.255.255.255")
            else:
                dests.append(".".join(local.split(".")[:3]) + ".255")
            try:
                s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                s.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
                s.bind((local, 0))                       # send out of this adapter
                for d in dests:
                    try:
                        s.sendto(msg, (d, self.send_port))
                    except OSError:
                        pass
                s.close()
            except OSError:
                pass

    # ---------------------------------------------------------------- messages
    def handle(self, msg, ip):
        if msg.get("app") != APP or msg.get("id") == self.id:
            return
        pid, t = str(msg.get("id", "")), msg.get("t")
        name = _clean(msg.get("name"))
        now = time.time()
        if t == "ping":
            self.send({"t": "pong", "ts": msg.get("ts", 0)}, ip)
            return
        if t == "pong":
            p = self.peers.get(pid)
            try:
                rtt = (time.perf_counter() - float(msg.get("ts", 0))) * 1000.0
            except (TypeError, ValueError):
                return
            if p is not None and 0 <= rtt < 5000:
                p["rtt"] = rtt if not p.get("rtt") else p["rtt"] * 0.7 + rtt * 0.3
            return
        if t == "hello":
            p = self.peers.setdefault(pid, {})
            p.update(name=name, ip=ip, status=str(msg.get("status", "menu")),
                     build=str(msg.get("build", "")), last=now)
        elif t == "challenge" and msg.get("mm"):
            # matchmaking: accept automatically if we are still searching
            cid = str(msg.get("cid", ""))
            if self.searching and not self.match and not self.outgoing:
                self.send({"t": "reply", "cid": cid, "answer": "accept", "port": self.listen_port_of_game()}, ip)
                self.match = {"name": name, "ip": ip}
                self.online = {"opp": name, "id": pid, "side": 1}
                self.searching = False
                self.log(f"lobby: matchmaking paired with {name} ({ip}), hosting")
            else:
                self.send({"t": "reply", "cid": cid, "answer": "busy"}, ip)
        elif t == "challenge":
            cid = str(msg.get("cid", ""))
            status = self.game_status()
            if status not in ("menu", "lobby") or self.incoming or (self.outgoing and self.outgoing["state"] == "waiting"):
                self.send({"t": "reply", "cid": cid, "answer": "busy"}, ip)
                return
            self.incoming = {"cid": cid, "id": pid, "name": name, "ip": ip, "t": now}
            self.log(f"lobby: challenge from {name} ({ip})")
        elif t == "cancel":
            if self.incoming and self.incoming["cid"] == msg.get("cid"):
                self.incoming = None
        elif t == "reply":
            o = self.outgoing
            if o and o["cid"] == msg.get("cid") and o["state"] == "waiting":
                ans = msg.get("answer")
                if ans == "accept":
                    o.update(state="accepted", ip=ip, port=int(msg.get("port", 7500)))
                    self.online = {"opp": o["name"], "id": o["id"], "side": 2}
                    if o.get("mm"):
                        self.searching = False
                elif o.get("mm"):
                    self.mm_skip[o["id"]] = now      # they stopped searching; keep looking
                    self.outgoing = None
                    return
                else:
                    o["state"] = "declined" if ans == "decline" else "busy"
                self.log(f"lobby: {o['name']} answered {o['state']}")

    def command(self, cmd, arg):
        if cmd == "lobby":
            self.lobby_open = arg == "1"
        elif cmd == "challenge":
            p = self.peers.get(arg)
            if p:
                cid = "%08x" % random.getrandbits(32)
                self.outgoing = {"cid": cid, "id": arg, "name": p["name"], "ip": p["ip"],
                                 "state": "waiting", "port": 0, "t": time.time()}
                self.send({"t": "challenge", "cid": cid}, p["ip"])
                self.log(f"lobby: challenging {p['name']} ({p['ip']})")
        elif cmd == "cancel":
            o = self.outgoing
            if o and o["state"] == "waiting":
                self.send({"t": "cancel", "cid": o["cid"]}, o["ip"])
            self.outgoing = None
        elif cmd in ("accept", "decline"):
            i = self.incoming
            if i and i["cid"] == arg:
                reply = {"t": "reply", "cid": arg, "answer": cmd}
                if cmd == "accept":
                    reply["port"] = self.listen_port_of_game()
                    self.online = {"opp": i["name"], "id": i["id"], "side": 1}
                self.send(reply, i["ip"])
                self.log(f"lobby: {cmd}d challenge from {i['name']}")
                self.incoming = None
        elif cmd == "clear":
            self.outgoing = None
        elif cmd == "search":
            if arg == "1":
                self.searching, self.search_since, self.match = True, time.time(), None
                self.log("lobby: matchmaking started")
            else:
                self.searching = False
                o = self.outgoing
                if o and o.get("mm") and o["state"] == "waiting":
                    self.send({"t": "cancel", "cid": o["cid"]}, o["ip"])
                    self.outgoing = None
        elif cmd == "clear_match":
            self.match = None

    def matchmake(self):
        """While searching: the player with the lower id challenges a searching peer; the other auto-accepts."""
        if not self.searching or self.match or self.outgoing:
            return
        now = time.time()
        for pid, p in sorted(self.peers.items()):
            same = not self.build or not p.get("build") or p["build"] == self.build
            if p.get("status") == "searching" and same and self.id < pid and now - self.mm_skip.get(pid, 0) > 10:
                cid = "%08x" % random.getrandbits(32)
                self.outgoing = {"cid": cid, "id": pid, "name": p["name"], "ip": p["ip"],
                                 "state": "waiting", "port": 0, "t": now, "mm": True}
                self.send({"t": "challenge", "cid": cid, "mm": True}, p["ip"])
                self.log(f"lobby: matchmaking -> {p['name']} ({p['ip']})")
                return

    def read_commands(self):
        try:
            with open(self.cmd_file, encoding="utf-8", errors="ignore") as f:
                line = f.read().strip()
        except OSError:
            return
        parts = line.split("\t")
        if len(parts) < 2 or parts[0] == self.last_seq:
            return
        self.last_seq = parts[0]
        self.command(parts[1], parts[2] if len(parts) > 2 else "")

    def write_state(self):
        now = time.time()
        lines = [f"me\t{self.name}\t{self.build}"]
        for pid, p in sorted(self.peers.items(), key=lambda kv: kv[1]["name"].lower()):
            same = "1" if (p.get("build") and p["build"] == self.build) or not self.build else "0"
            lines.append(f"peer\t{pid}\t{p['name']}\t{p['ip']}\t{p['status']}\t{same}\t{int(p.get('rtt') or 0)}")
        if self.incoming:
            i = self.incoming
            lines.append(f"incoming\t{i['cid']}\t{i['id']}\t{i['name']}\t{int(CHALLENGE_TIMEOUT - (now - i['t']))}")
        if self.online:
            opp = self.peers.get(self.online.get("id"), {})
            lines.append(f"online\t{self.online['opp']}\t{self.online['side']}\t{int(opp.get('rtt') or 0)}")
        if self.searching:
            n = sum(1 for p in self.peers.values() if p.get("status") == "searching")
            lines.append(f"search	{int(now - self.search_since)}	{n}")
        if self.match:
            lines.append(f"match	host	{self.match['name']}")
        if self.outgoing:
            o = self.outgoing
            lines.append(f"outgoing\t{o['cid']}\t{o['id']}\t{o['name']}\t{o['state']}\t{o['ip']}\t{o['port']}")
        text = "\n".join(lines) + "\n"
        if text == self.last_written:
            return
        tmp = self.out_file + ".tmp"
        try:
            with open(tmp, "w", encoding="utf-8") as f:
                f.write(text)
            os.replace(tmp, self.out_file)
            self.last_written = text
        except OSError:
            pass

    def expire(self):
        now = time.time()
        for pid in [k for k, p in self.peers.items() if now - p["last"] > PEER_TIMEOUT]:
            del self.peers[pid]
        if self.incoming and now - self.incoming["t"] > CHALLENGE_TIMEOUT:
            self.send({"t": "reply", "cid": self.incoming["cid"], "answer": "decline"}, self.incoming["ip"])
            self.incoming = None
        o = self.outgoing
        if o and o.get("mm") and o["state"] == "waiting" and now - o["t"] > 6:
            self.mm_skip[o["id"]] = now
            self.outgoing = None
        elif o and o["state"] == "waiting" and now - o["t"] > CHALLENGE_TIMEOUT + 2:
            o["state"] = "timeout"

    # ---------------------------------------------------------------- thread
    def run(self):
        for f in (self.out_file, self.cmd_file):
            try:
                os.remove(f)
            except OSError:
                pass
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_BROADCAST, 1)
            self.sock.bind(("0.0.0.0", self.port))
            self.sock.settimeout(0.1)
        except OSError as e:
            self.log(f"lobby: cannot open UDP port {self.port}: {e!r}")
            return
        threading.Thread(target=self.compute_build, daemon=True).start()
        self.log(f"lobby: up as '{self.name}' on UDP {self.port}, adapters {self.local_ips()}")
        next_hello = 0.0
        while not self.stop_flag:
            try:
                data, addr = self.sock.recvfrom(4096)
                self.handle(json.loads(data.decode("utf-8", "ignore")), addr[0])
            except socket.timeout:
                pass
            except (OSError, ValueError):
                pass
            now = time.time()
            if now >= next_hello:
                next_hello = now + HELLO_EVERY
                self.broadcast_hello()
            self.read_commands()
            self.ping_peers()
            self.matchmake()
            self.expire()
            self.write_state()
        try:
            os.remove(self.out_file)
        except OSError:
            pass
