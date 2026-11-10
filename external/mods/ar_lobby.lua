-- Abstract Reordered: online lobby (Radmin VPN / LAN).
-- NETWORK > ONLINE LOBBY lists other players on your network who have the game open, and lets you
-- challenge one. A challenge you receive pops up in the main menu or the lobby.
-- The player who accepts hosts, the challenger joins, then both land in the usual netplay menu.
-- Networking is done by discord_presence/ar_lobby.py (inside the companion script that starts with
-- the game); this file only reads save/ar_lobby.txt and writes save/ar_lobby_cmd.txt.

local L = {
	stateFile = 'save/ar_lobby.txt',
	cmdFile = 'save/ar_lobby_cmd.txt',
	seq = 0,
	inNet = false,
	dismissed = {},   -- challenge ids already answered
	menuTick = 0,
}

local function split(s, sep)
	local t = {}
	for part in (s .. sep):gmatch('(.-)' .. sep) do
		table.insert(t, part)
	end
	return t
end

local function readState()
	local st = {peers = {}, me = nil, incoming = nil, outgoing = nil, running = false}
	local f = io.open(L.stateFile, 'r')
	if not f then return st end
	local text = f:read('*a') or ''
	f:close()
	st.running = true
	for line in text:gmatch('[^\r\n]+') do
		local p = split(line, '\t')
		if p[1] == 'me' then
			st.me = {name = p[2] or '', build = p[3] or ''}
		elseif p[1] == 'peer' and #p >= 6 then
			table.insert(st.peers, {id = p[2], name = p[3], ip = p[4], status = p[5], same = p[6] == '1', rtt = tonumber(p[7]) or 0})
		elseif p[1] == 'join' and #p >= 4 then
			st.join = {id = p[2], name = p[3], state = p[4]}
		elseif p[1] == 'online' and #p >= 4 then
			st.online = {name = p[2], side = tonumber(p[3]) or 1, rtt = tonumber(p[4]) or 0}
		elseif p[1] == 'incoming' and #p >= 4 then
			st.incoming = {cid = p[2], id = p[3], name = p[4], left = tonumber(p[5]) or 0}
		elseif p[1] == 'outgoing' and #p >= 7 then
			st.outgoing = {cid = p[2], id = p[3], name = p[4], state = p[5], ip = p[6], port = tonumber(p[7]) or 0,
				wait = tonumber(p[8]) or 0, auto = p[9] == '1'}
		elseif p[1] == 'search' then
			st.search = {secs = tonumber(p[2]) or 0, searching = tonumber(p[3]) or 0}
		elseif p[1] == 'match' and #p >= 3 then
			st.match = {role = p[2], name = p[3], auto = p[4] == '1'}
		end
	end
	return st
end

-- one command line; the file is removed first because Ikemen's io.open(...,'w') does not truncate
local function command(cmd, arg)
	L.seq = L.seq + 1
	pcall(os.remove, L.cmdFile)
	local f = io.open(L.cmdFile, 'w')
	if f then
		f:write(tostring(os.time and os.time() or 0) .. '-' .. L.seq .. '\t' .. cmd .. '\t' .. (arg or '') .. '\n')
		f:close()
	end
end

local function sec()
	return motif[main.group] or motif.title_info
end

local function sound(kind)
	pcall(function()
		local s = sec()
		local snd = kind == 'cancel' and s.cancel.snd or (kind == 'done' and s.cursor.done.snd.default or s.cursor.move.snd)
		sndPlay(motif.Snd, snd[1], snd[2])
	end)
end

-- lobby background (1280x720, "ONLINE" top left) and music
L.bgSff = 'data/AbstractReordered/lobby/lobby.sff'
L.bgm = 'sound/Railgun_JudgementNoKatsudou.mp3'

-- sprites in lobby.sff: 0,0 background; 10,k button; 11,k highlighted button (k: 0 LOBBIES, 1 MATCHMAKING, 2 BACK)
L.anims = {}
local function lobbySprite(g, i)
	local k = g .. ',' .. i
	if L.anims[k] == nil then
		L.anims[k] = false
		pcall(function()
			L.sff = L.sff or sffNew(L.bgSff)
			local a = animNew(L.sff, g .. ',' .. i .. ', 0,0, -1')
			animSetLocalcoord(a, motif.info.localcoord[1], motif.info.localcoord[2])
			animSetScale(a, 1, 1)
			animSetLayerno(a, 0)
			animUpdate(a)
			L.anims[k] = a
		end)
	end
	return L.anims[k]
end

local function lobbyBg()
	return lobbySprite(0, 0)
end

-- same drawing as the game's own text-input screen (title background + dark overlay + text);
-- withBg = the lobby picture instead of the title background; buttons = {sel = n} draws the hub buttons
local function drawScreen(text, withBg, buttons)
	local s = sec()
	local bg = motif[main.background]
	local art = withBg and lobbyBg() or nil
	clearColor(bg.bgclearcolor[1], bg.bgclearcolor[2], bg.bgclearcolor[3])
	if art then
		main.f_animPosDraw(art, 0, 0, 1)
		if buttons then
			for k = 0, 2 do
				local b = lobbySprite(k + 1 == buttons.sel and 11 or 10, k)
				if b then main.f_animPosDraw(b, 40, 250 + k * 90, 1) end
			end
		end
	else
		bgDraw(bg.BGDef, 0)
		rectDraw(s.textinput.overlay.RectData)
	end
	local ts = s.textinput.TextSpriteData
	textImgReset(ts)
	pcall(textImgSetPos, ts, art and 60 or 189, 150)
	textImgSetText(ts, text)
	-- the picture and buttons are sprites on layer 0, which draw over text on the same layer:
	-- put the text on layer 1 (textImgReset above restores the motif's layer for the game's own screens)
	pcall(textImgSetLayerno, ts, art and 1 or 0)
	textImgDraw(ts)
	if not art then bgDraw(bg.BGDef, 1) end
	refresh()
end

local function lobbyMusic(on)
	if on then
		pcall(playBgm, {bgm = L.bgm, loop = 1, interrupt = true})
	else
		pcall(playBgm, {source = 'motif.title', interrupt = true})
	end
end

local function pressed(which)
	local m = sec().menu
	if which == 'cancel' then
		return esc() or getInput(-1, m.cancel.key)
	end
	return getInput(-1, m[which].key)
end

-------------------------------------------------------------------------- automatic rollback delay
-- Input delay ~ one-way latency in frames (60 fps), so rollbacks stay small. Set once, right before connecting,
-- from the lobby helper's smoothed ping (Ikemen only reads it when the session starts); your own Options value
-- is restored after the session.
local DELAY_MIN, DELAY_MAX = 1, 8

local function delayForPing(rtt)
	if not rtt or rtt <= 0 then return nil end
	local d = math.ceil((rtt / 2) / (1000 / 60))
	return math.max(DELAY_MIN, math.min(DELAY_MAX, d))
end

local function setDelay(rtt, why)
	local d = delayForPing(rtt)
	if d == nil then return end
	pcall(modifyGameOption, 'Netplay.Rollback.FrameDelay', d)
	local f = io.open('save/ar_netdelay.txt', 'a')
	if f then
		f:write(string.format('%s ping %d ms -> rollback frame delay %d (%s)\n', os.date and os.date('%H:%M:%S') or '', rtt, d, why))
		f:close()
	end
end

-- opponent's ping from the lobby helper: the live 'online' line, else the peer list (by id or name)
local function opponentPing(st, id, name)
	if st.online and st.online.rtt > 0 then return st.online.rtt end
	for _, p in ipairs(st.peers) do
		if (id and p.id == id) or (name and p.name == name) then return p.rtt end
	end
	return 0
end

-- host (server == '') or join (server = IP), then the synced netplay menu, like NETWORK > HOST/JOIN
-- oppId / label identify the opponent, for the automatic rollback delay
local function netplay(server, label, oppId, autoVersus)
	local okD, userDelay = pcall(gameOption, 'Netplay.Rollback.FrameDelay')
	pcall(function() setDelay(opponentPing(readState(), oppId, label), 'connecting to ' .. tostring(label)) end)
	L.inNet = true
	pcall(main.f_waitForPreloads, true)
	local linked = main.f_connect(server, label)
	if linked then
		if server == '' then           -- a room host learns its opponent only now
			command('room_live')
			pcall(function() setDelay(opponentPing(readState()), 'room joined') end)
		end
		if synchronize() then
			main.f_clearShuffleTables()
			if autoVersus then
				-- matchmaking: straight into VERSUS 2P, the same calls the netplay menu makes for that item
				main.f_default()
				local mode = main.t_itemname.netplayversus({{itemname = 'netplayversus', displayname = 'VERSUS 2P'}}, 1)
				main.f_unlock(false)
				if mode ~= nil then mode() end
				main.f_default()
				main.f_unlock(false)
			else
				main.f_menuSnap(motif[main.group])
				main.f_menuItemBgAnimReset(motif[main.group])
				fadeInInit(motif[main.group].fadein.FadeData)
				main.menu.submenu.server.loop()
			end
		end
		replayStop()
		exitNetPlay()
		exitReplay()
		L.inNet = false
		-- main.lua's showSessionWarning() is local, so do the same thing here (desync/disconnect notice)
		local ok, err = pcall(function()
			local text = getSessionWarning()
			if text ~= nil and text ~= '' then
				main.f_warning(text, motif[main.group], motif[main.background])
			end
		end)
		if not ok and tostring(err):find('<game end>', 1, true) then error(err, 0) end
	end
	L.inNet = false
	if okD and userDelay ~= nil then   -- back to your own Options value
		pcall(modifyGameOption, 'Netplay.Rollback.FrameDelay', userDelay)
	end
	return linked
end

-- errors in lobby code are logged and swallowed; "game closed" and anything during netplay pass through
local function guarded(f, ...)
	local ok, err = pcall(f, ...)
	if not ok then
		local msg = tostring(err)
		if L.inNet or msg:find('<game end>', 1, true) then
			L.inNet = false
			error(err, 0)
		end
		local fh = io.open('save/ar_lobby_error.txt', 'w')
		if fh then fh:write(msg .. '\n') fh:close() end
	end
	return ok
end

local function pad(s, n)
	s = tostring(s or '')
	if #s >= n then return s end
	return s .. string.rep(' ', n - #s)
end

local statusText = {menu = 'in menu', lobby = 'in lobby', playing = 'in a match', online = 'playing online',
	searching = 'looking for a match', training = 'in training', arcade = 'in arcade', hosting = 'hosting a room'}

-- who can be challenged: in the menus/lobby, or in training/arcade (they answer from the pause menu)
local challengeable = {menu = true, lobby = true, training = true, arcade = true}

-- incoming challenge popup; returns true if accepted (and the netplay session has finished)
local function challengePopup(inc, withBg)
	local t = 0
	L.dismissed[inc.cid] = true
	while true do
		t = t + 1
		local st = t % 15 == 1 and readState() or nil
		if st and (not st.incoming or st.incoming.cid ~= inc.cid) then
			return false   -- withdrawn or expired
		end
		if st then inc.left = st.incoming.left end
		drawScreen(inc.name .. ' challenges you!  (' .. math.max(0, inc.left) .. ')\\n\\n'
			.. 'CONFIRM: accept and host the match\\nESC: decline', withBg)
		if t > 20 then   -- ignore buttons still held
			if pressed('done') then
				sound('done')
				command('accept', inc.cid)
				netplay('', inc.name, inc.id)
				return true
			elseif pressed('cancel') then
				sound('cancel')
				command('decline', inc.cid)
				return false
			end
		end
	end
end

-- HOST A ROOM: the engine's "waiting for player 2" screen; ESC closes the room.
function L.hostRoom()
	command('host', '1')
	local linked = netplay('', 'your room')
	command('host', '0')
	return linked and 'done' or 'back'
end

-- join an open room: claim its slot first (so two people can't take it), then connect straight to the host
function L.joinRoom(p)
	command('join', p.id)
	local t, st = 0, readState()
	while true do
		t = t + 1
		if t % 6 == 1 then st = readState() end
		local j = st.join
		if j and j.id == p.id and t > 6 then
			if j.state == 'ok' then
				command('clear_join')
				netplay(p.ip, p.name, p.id)
				return 'done'
			elseif j.state ~= 'waiting' then
				command('clear_join')
				return 'back', (j.state == 'full' and "That room is full or closed." or (p.name .. "'s room didn't answer."))
			end
		end
		drawScreen('Joining ' .. p.name .. "'s room...\\n\\nESC: cancel", true)
		if t > 15 and pressed('cancel') then
			sound('cancel')
			command('clear_join')
			return 'back'
		end
	end
end

-- LOBBIES: host a room, join an open room, or challenge a player.
-- Returns 'done' after a netplay session, 'back' for the hub.
function L.lobbyList()
	local sel, t, st = 1, 0, readState()
	local msg, msgT = nil, 0
	local acceptedAt = nil
	while true do
		t = t + 1
		if t % 10 == 1 then st = readState() end

		-- someone challenged us
		if st.incoming and not L.dismissed[st.incoming.cid] then
			if challengePopup(st.incoming, true) then
				return 'done'
			end
			t = 0
			st = readState()
		end

		local out = st.outgoing
		-- what can be selected, top to bottom: host button, open rooms, players
		local entries, rooms, players = {}, {}, {}
		if st.running then
			table.insert(entries, {kind = 'host'})
			for _, p in ipairs(st.peers) do
				table.insert(p.status == 'hosting' and rooms or players, p)
			end
			for _, p in ipairs(rooms) do table.insert(entries, {kind = 'room', p = p}) end
			for _, p in ipairs(players) do table.insert(entries, {kind = 'player', p = p}) end
			if sel > #entries then sel = #entries end
		end
		local lines = {}
		local who = st.me and st.me.name or '?'
		table.insert(lines, 'You are: ' .. who)
		table.insert(lines, '')
		if not st.running then
			table.insert(lines, 'The lobby helper is not running.')
			table.insert(lines, 'It starts with the game when Python + discord_presence are set up.')
		else
			table.insert(lines, (sel == 1 and '> ' or '   ') .. '[ HOST A ROOM ]')
			table.insert(lines, '')
			local row = 1
			if #rooms > 0 then
				table.insert(lines, 'Open rooms:')
				for _, p in ipairs(rooms) do
					row = row + 1
					local line = (row == sel and '> ' or '   ') .. pad(p.name .. "'s room", 24) .. ' ' .. p.rtt .. ' ms'
					if not p.same then line = line .. '   [different build]' end
					table.insert(lines, line)
				end
				table.insert(lines, '')
			end
			if #st.peers == 0 then
				table.insert(lines, 'No one is on the game dumbass')
			elseif #players > 0 then
				table.insert(lines, 'Pick your opponent:')
				for _, p in ipairs(players) do
					row = row + 1
					local line = (row == sel and '> ' or '   ') .. pad(p.name, 18) .. ' ' .. (statusText[p.status] or p.status)
					if not p.same then line = line .. '   [different build]' end
					table.insert(lines, line)
				end
			end
		end
		table.insert(lines, '')

		if out then
			if out.state == 'waiting' then
				table.insert(lines, 'Challenging ' .. out.name .. '...   (ESC to cancel)')
			elseif out.state == 'accepted' then
				table.insert(lines, out.name .. ' accepted!  Connecting...')
				acceptedAt = acceptedAt or t
				if t - acceptedAt > 60 + (out.wait or 0) * 60 then   -- give the host a moment to start listening
					command('clear')
					local ip, name, oid = out.ip, out.name, out.id
					netplay(ip, name, oid)
					return 'done'
				end
			else
				msg = ({declined = out.name .. ' declined.', busy = out.name .. ' is busy right now.',
					timeout = 'No answer from ' .. out.name .. '.'})[out.state] or (out.name .. ': ' .. out.state)
				msgT = 180
				command('clear')
				st.outgoing = nil
			end
		elseif msgT > 0 then
			msgT = msgT - 1
			table.insert(lines, msg)
		else
			table.insert(lines, #entries > 1 and 'UP/DOWN: choose    CONFIRM: select    ESC: back'
				or (#entries == 1 and 'CONFIRM: host a room    ESC: back' or 'ESC: back'))
		end

		drawScreen(table.concat(lines, '\\n'), true)

		if t > 15 then
			if out and out.state == 'waiting' then
				if pressed('cancel') then
					sound('cancel')
					command('cancel')
					st.outgoing = nil
				end
			elseif not out then
				if pressed('cancel') then
					sound('cancel')
					return 'back'
				elseif #entries > 0 and pressed('next') then
					sel = sel % #entries + 1
					sound('move')
				elseif #entries > 0 and pressed('previous') then
					sel = (sel - 2) % #entries + 1
					sound('move')
				elseif #entries > 0 and entries[sel].kind == 'host' and pressed('done') then
					sound('done')
					if L.hostRoom() == 'done' then return 'done' end
					t = 0
					st = readState()
				elseif #entries > 0 and entries[sel].kind == 'room' and pressed('done') then
					sound('done')
					local r, why = L.joinRoom(entries[sel].p)
					if r == 'done' then return 'done' end
					if why then msg, msgT = why, 180 end
					t = 0
					st = readState()
				elseif #entries > 0 and pressed('done') then
					local p = entries[sel].p
					if p and challengeable[p.status] then
						sound('done')
						command('challenge', p.id)
						acceptedAt = nil
						st.outgoing = {cid = '', id = p.id, name = p.name, state = 'waiting', ip = p.ip, port = 0}
					else
						msg, msgT = (p and p.name or '?') .. ' is busy right now.', 120
					end
				end
			end
		end
	end
end

-- MATCHMAKING: search until another searching player is found, then host or join automatically.
function L.matchmaking()
	command('search', '1')
	local t, st, acceptedAt = 0, readState(), nil
	while true do
		t = t + 1
		if t % 10 == 1 then st = readState() end
		if st.match and t > 10 then   -- we were picked and host
			command('clear_match')
			netplay('', st.match.name, nil, st.match.auto)
			return 'done'
		end
		local out = st.outgoing
		local lines = {'MATCHMAKING', ''}
		if not st.running then
			table.insert(lines, 'The lobby helper is not running.')
		elseif out and out.state == 'accepted' then
			table.insert(lines, 'Opponent found: ' .. out.name .. '!')
			table.insert(lines, 'Connecting...')
			acceptedAt = acceptedAt or t
			if t - acceptedAt > 60 + (out.wait or 0) * 60 then   -- give the host a moment to start listening
				command('clear')
				netplay(out.ip, out.name, out.id, out.auto)
				return 'done'
			end
		else
			local secs = st.search and st.search.secs or 0
			table.insert(lines, 'Currently searching' .. string.rep('.', math.floor(t / 20) % 4))
			table.insert(lines, string.format('Time: %d:%02d', math.floor(secs / 60), secs % 60))
			table.insert(lines, 'Players online: ' .. #st.peers .. '    also searching: ' .. (st.search and st.search.searching or 0))
			table.insert(lines, '')
			table.insert(lines, 'ESC: stop searching')
		end
		drawScreen(table.concat(lines, '\\n'), true)
		if t > 15 and not acceptedAt and pressed('cancel') then
			sound('cancel')
			command('search', '0')
			return 'back'
		end
	end
end

-- hub: LOBBIES / MATCHMAKING / BACK buttons over the lobby picture
function L.lobby()
	command('lobby', '1')
	lobbyMusic(true)
	local sel, t, st = 1, 0, readState()
	while true do
		t = t + 1
		if t % 10 == 1 then st = readState() end
		if st.incoming and not L.dismissed[st.incoming.cid] then
			if challengePopup(st.incoming, true) then
				command('lobby', '0')
				return
			end
			t = 0
		end
		local who = st.me and st.me.name or '?'
		local info = 'You are: ' .. who .. '      Players online: ' .. #st.peers
		if not st.running then info = 'The lobby helper is not running (needs Python + discord_presence).' end
		drawScreen(info, true, {sel = sel})
		if t > 15 then
			if pressed('next') then
				sel = sel % 3 + 1
				sound('move')
			elseif pressed('previous') then
				sel = (sel - 2) % 3 + 1
				sound('move')
			elseif pressed('cancel') or (sel == 3 and pressed('done')) then
				sound('cancel')
				command('lobby', '0')
				return
			elseif pressed('done') then
				sound('done')
				local r = sel == 1 and L.lobbyList() or L.matchmaking()
				if r == 'done' then
					command('lobby', '0')
					return
				end
				t = 0
				st = readState()
			end
		end
	end
end

-------------------------------------------------------------------------- player name profile
-- save/ar_profile.txt holds "name=<lobby name>". Asked once on first launch, changed in
-- OPTIONS > Netplay Settings > Lobby Name. The lobby helper re-reads it every couple of seconds.
L.profileFile = 'save/ar_profile.txt'

local function cleanName(s)
	s = tostring(s or ''):gsub('[%c\\]', ' '):gsub('^%s+', ''):gsub('%s+$', '')
	if #s > 20 then s = s:sub(1, 20) end
	return s
end

function L.getName()
	local f = io.open(L.profileFile, 'r')
	if not f then return nil end
	local text = f:read('*a') or ''
	f:close()
	local n = text:match('name=([^\r\n]*)')
	n = cleanName(n)
	if n == '' then return nil end
	return n
end

function L.setName(n)
	n = cleanName(n)
	if n == '' then return false end
	pcall(os.remove, L.profileFile)
	local f = io.open(L.profileFile, 'w')
	if not f then return false end
	f:write('name=' .. n .. '\n')
	f:close()
	return true
end

-- text-input screen of the given motif section (same as NEW ADDRESS / Port Change)
local function askName(s, bgdef, prompt, current)
	return main.f_drawInput(s.textinput.TextSpriteData, prompt, s, bgdef, s.textinput.overlay.RectData, current or '')
end

-- shown once, the first time the main menu appears
function L.firstLaunch()
	local s = motif.title_info
	local n = cleanName(askName(s, motif[main.background],
		'Welcome to Abstract Reordered!\\nEnter a player name for online lobbies (change it later in Options).', ''))
	if n == '' then
		n = cleanName((os.getenv and os.getenv('USERNAME')) or '') -- ESC: keep the PC user name for now
		if n == '' then n = 'Player' end
	end
	L.setName(n)
	for _ = 1, 60 do   -- short confirmation, also lets go of the ENTER key before the menu reads input
		drawScreen('Lobby name set to: ' .. n .. '\\n\\nYou can change it in OPTIONS > Netplay Settings.')
	end
end

-------------------------------------------------------------------------- menus
-- ONLINE LOBBY on the main menu next to NETWORK (HOST GAME / JOIN GAME with a typed-in IP, kept as the
-- manual way to connect), and OPTIONS > Netplay Settings > Lobby Name (menus are built after mods load).
pcall(main.f_appendItemname, motif.title_info.menu, '', 'arlobby', 'ONLINE LOBBY', 'menunetwork')
pcall(main.f_appendItemname, motif.option_info.menu, 'menunetplay', 'arname', 'Lobby Name', 'portchange')

if options and options.t_itemname and options.t_vardisplay then
	options.t_vardisplay.arname = function()
		return L.getName() or '(not set)'
	end
	options.t_itemname.arname = function(t, item, cursorPosY, moveTxt)
		if getInput(-1, motif.option_info.menu.done.key) then
			local s = motif.option_info
			pcall(sndPlay, motif.Snd, s.cursor.move.snd[1], s.cursor.move.snd[2])
			local n = cleanName(askName(s, motif.optionbgdef, 'Enter your lobby name (max 20 characters).\\nPress ENTER to accept, ESC to cancel.', L.getName()))
			if n ~= '' and L.setName(n) then
				pcall(sndPlay, motif.Snd, s.cursor.done.snd[1], s.cursor.done.snd[2])
				t.items[item].vardisplay = n
			else
				pcall(sndPlay, motif.Snd, s.cancel.snd[1], s.cancel.snd[2])
			end
		end
		return true
	end
end

if main and main.t_itemname then
	main.t_itemname.arlobby = function(t, item)
		guarded(L.lobby)
		pcall(command, 'lobby', '0')
		lobbyMusic(false)
		pcall(textImgSetLayerno, motif.title_info.textinput.TextSpriteData, 0)   -- back to the motif's layer
		return nil
	end
end

-- challenges received while browsing the main menu
if hook and hook.add then
	-- (hook 'main.menu.loop' only runs when a menu opens, so per-frame work goes through the menu draw below)
end

-- every frame of the title menus: first-launch name prompt (after the boot logo), and challenges
-- received while browsing the menus
function L.menuFrame()
	-- a challenge accepted from the pause menu: the match has ended, now host it
	if L.pendingHost then
		local h = L.pendingHost
		L.pendingHost = nil
		guarded(netplay, '', h.name, h.id)
		return
	end
	if not L.profileChecked then
		L.profileChecked = true
		if not L.getName() then
			guarded(L.firstLaunch)
		end
	end
	L.menuTick = L.menuTick + 1
	if L.menuTick % 15 ~= 0 then return end
	local okRead, st = pcall(readState)
	if okRead and st.incoming and not L.dismissed[st.incoming.cid] then
		guarded(challengePopup, st.incoming)
	end
end

if main and type(main.f_menuCommonDraw) == 'function' then
	local origDraw = main.f_menuCommonDraw
	main.f_menuCommonDraw = function(t, item, cursorPosY, moveTxt, sec, ...)
		if sec ~= nil and sec == motif.title_info then
			L.menuFrame()
		end
		return origDraw(t, item, cursorPosY, moveTxt, sec, ...)
	end
end

-------------------------------------------------------------------------- challenges during training / arcade
-- The lobby helper lets players in training or arcade be challenged. During the fight a banner shows the
-- challenge; pausing adds ACCEPT / DECLINE CHALLENGE at the top of the pause menu. Accepting ends the match
-- (like the pause menu's EXIT) and hosts from the menu; the challenger is told to wait a few seconds.
L.fight = {tick = 0, inc = nil}

local function fightModeOk()
	local ok, m = pcall(gameMode)
	return ok and (m == 'training' or m == 'arcade')
end

local function fightBanner(inc)
	pcall(function()
		local ts = motif.title_info.textinput.TextSpriteData
		textImgReset(ts)
		pcall(textImgSetPos, ts, 40, 60)
		textImgSetText(ts, inc.name .. ' challenges you!  Pause to answer  (' .. math.max(0, inc.left or 0) .. ')')
		pcall(textImgSetLayerno, ts, 2)
		textImgDraw(ts)
	end)
end

if hook and hook.add then
	hook.add('loop', 'arLobbyFightChallenge', function()
		pcall(function()
			if not fightModeOk() then
				L.fight.inc = nil
				return
			end
			L.fight.tick = L.fight.tick + 1
			if L.fight.tick % 30 == 1 then
				local st = readState()
				local inc = st.incoming
				L.fight.inc = (inc and not L.dismissed[inc.cid]) and inc or nil
			end
			if L.fight.inc then
				fightBanner(L.fight.inc)
			end
		end)
	end)

	-- pause menu: add/remove the two items at the top of the root pause menu
	hook.add('menu.menu.loop', 'arLobbyPauseItems', function()
		pcall(function()
			local root = menu.currentMenuId and menu[menu.currentMenuId]
			if root == nil or type(root.items) ~= 'table' then return end
			local has = root.items[1] and root.items[1].itemname == 'archalaccept'
			local inc = fightModeOk() and L.fight.inc or nil
			if inc and not has then
				table.insert(root.items, 1, {itemname = 'archaldecline', displayname = 'DECLINE CHALLENGE', paramname = 'archaldecline'})
				table.insert(root.items, 1, {itemname = 'archalaccept', displayname = 'ACCEPT CHALLENGE: ' .. inc.name, paramname = 'archalaccept'})
				root.item, root.cursorPosY, root.moveTxt = 1, 1, 0
			elseif has and not inc then
				table.remove(root.items, 1)
				if root.items[1] and root.items[1].itemname == 'archaldecline' then table.remove(root.items, 1) end
				root.item, root.cursorPosY, root.moveTxt = 1, 1, 0
			end
		end)
	end)
end

if menu and menu.t_itemname then
	menu.t_itemname.archalaccept = function(t, item, cursorPosY, moveTxt, sec)
		if getInput(-1, sec.menu.done.key) and L.fight.inc then
			local inc = L.fight.inc
			pcall(sndPlay, motif.Snd, sec.cursor.done.snd[1], sec.cursor.done.snd[2])
			L.dismissed[inc.cid] = true
			L.fight.inc = nil
			command('accept', inc.cid .. '|late')
			L.pendingHost = {name = inc.name, id = inc.id}
			endMatch()                 -- same as the pause menu's EXIT
			start.exit = true
			main.pauseMenuActive = false
			return false
		end
		return true
	end
	menu.t_itemname.archaldecline = function(t, item, cursorPosY, moveTxt, sec)
		if getInput(-1, sec.menu.done.key) and L.fight.inc then
			pcall(sndPlay, motif.Snd, sec.cancel.snd[1], sec.cancel.snd[2])
			L.dismissed[L.fight.inc.cid] = true
			command('decline', L.fight.inc.cid)
			L.fight.inc = nil   -- the pause-menu hook removes the items next frame
		end
		return true
	end
end
