Abstract Reordered - Discord Rich Presence
==========================================

How it works
  - external\mods\ar_presence.lua (autoloaded by Ikemen GO) writes save\ar_presence.json
    when you are in the main menu, options, character select, the versus screen, a fight
    (P1/P2 names, stage, mode, round, arcade match), the pause menu, or after a match.
  - discord_presence\ar_discord_presence.py starts the game, reads that file and updates Discord.
    It closes itself when the game closes.

Play with presence
  Double-click "Abstract Reordered (Discord).bat" in the game folder (instead of Ikemen_GO.exe).
  Discord's desktop app must be running. Starting Ikemen_GO.exe directly still works, just without presence.

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

Troubleshooting
  - discord_presence\presence.log says what happened (connection, missing pypresence, etc.).
  - save\ar_presence.json shows the state the game is reporting right now.
  - Turn presence off: just launch Ikemen_GO.exe directly. To remove the Lua part,
    rename external\mods\ar_presence.lua to -ar_presence.lua (a leading '-' stops autoloading).
