Abstract Reordered - Discord Rich Presence
==========================================

How it works
  - external\mods\ar_presence.lua (autoloaded by Ikemen GO) writes save\ar_presence.json
    when you are in the main menu, options, character select, the versus screen, a fight
    (P1/P2 names, stage, mode, round, arcade match), the pause menu, or after a match.
  - discord_presence\ar_discord_presence.py starts the game, reads that file and updates Discord.
    It closes itself when the game closes.

Play with presence
  Just open Ikemen_GO.exe: the Lua module starts the presence script in the background
  (a console window may blink once at boot) and it closes when the game closes.
  "Abstract Reordered (Discord).bat" also still works; only one copy of the script ever runs.
  Discord's desktop app must be running.

One-time setup (already done on this PC)
  1. Python 3 installed, then:  python -m pip install pypresence
  2. discord_presence\config.json -> "client_id" is your Discord Application ID.
     The application's name in the Discord developer portal is what shows as "Playing ...".

Art (Discord developer portal -> your app -> Rich Presence -> Art Assets)
  - Upload the game logo with the key name:  logo
    (or change "large_image" in config.json to the key you used)
  - Character art: upload every PNG in discord_presence\art\ (512x512, already named with the
    right keys, e.g. saber_ar). P1's art becomes the big image and P2's the small corner one.
    New character: add art\<folder name in lowercase>.png and upload it with the same name.
    Characters with no PNG there fall back to the logo. "character_images": false turns it off.
    If an uploaded key differs from the folder name, map it:  "character_image_map": {"saber_ar": "saber"}
  - New uploads can take a few minutes to appear in Discord.

Other options in config.json
  "show_stage": false     hide the stage name
  "buttons": [{"label": "Download", "url": "https://..."}]   up to 2 link buttons

Online lobby (Radmin VPN / LAN)
  - First launch asks for a player name (saved in save\ar_profile.txt).
    Change it any time: OPTIONS > Netplay Settings > Lobby Name.
  - Rooms: in LOBBIES pick HOST A ROOM. Your room shows up for everyone on your Radmin network; they
    select it to join directly (P2P, no server). One opponent per room; ESC on the waiting screen closes it.
  - ONLINE LOBBY (main menu) lists everyone on your Radmin network (or home LAN) who has the game open,
    with their status (in menu / in lobby / in a match / playing online) and a [different build]
    warning if their characters/stages files don't match yours (mismatched builds can desync).
  - The lobby opens on two buttons: LOBBIES (the player list below) and MATCHMAKING (search until
    another player is also searching, then you are paired and connected automatically; ESC stops).
  - In LOBBIES, pick a player and press CONFIRM to challenge them. They get a popup in the main menu or lobby:
    CONFIRM accepts (they host), ESC declines. You then join automatically and both land in the
    normal netplay mode menu (VERSUS 2P etc.). MATCHMAKING goes straight to VERSUS 2P when both have this version.
  - Players in TRAINING or ARCADE can be challenged too: they see a banner during the fight, and
    pausing adds ACCEPT CHALLENGE / DECLINE CHALLENGE at the top of the pause menu. Accepting leaves
    the match and hosts; the challenger waits a few extra seconds before joining.
  - Requirements for everyone: Python 3 installed, this discord_presence folder, and the same
    netplay port in Options (default 7500). pypresence is only needed for Discord.
  - Windows Firewall: the first time, Windows may ask to allow "pythonw" - allow it on BOTH private and
    public networks (Radmin counts as public). The lobby uses UDP port 7510; the match itself uses 7500.
  - IPs of players you have met are kept in save\ar_lobby_peers.txt and contacted directly.
  - Players are found by broadcast; IPs saved in save\config.ini [Netplay] IP.* are also contacted directly.
  - Rollback frame delay is set automatically for lobby/matchmaking matches: the lobby pings your
    opponent every second and uses about one frame of delay per 16 ms of one-way latency (1-8),
    set once when you connect (Ikemen only reads it at the start of a session). Your own Options
    value comes back afterwards.
    What it picked is logged in save\ar_netdelay.txt.
  - Turn the lobby off: "lobby": false in config.json.

Troubleshooting
  - discord_presence\presence.log says what happened (connection, missing pypresence, etc.).
  - save\ar_presence.json shows the state the game is reporting right now.
  - Turn presence off: rename external\mods\ar_presence.lua to -ar_presence.lua
    (a leading '-' stops autoloading), or empty "client_id" in config.json.
