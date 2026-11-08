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
			table.insert(st.peers, {id = p[2], name = p[3], ip = p[4], status = p[5], same = p[6] == '1'})
		elseif p[1] == 'incoming' and #p >= 4 then
			st.incoming = {cid = p[2], id = p[3], name = p[4], left = tonumber(p[5]) or 0}
		elseif p[1] == 'outgoing' and #p >= 7 then
			st.outgoing = {cid = p[2], id = p[3], name = p[4], state = p[5], ip = p[6], port = tonumber(p[7]) or 0}
		elseif p[1] == 'search' then
			st.search = {secs = tonumber(p[2]) or 0, searching = tonumber(p[3]) or 0}
		elseif p[1] == 'match' and #p >= 3 then
			st.match = {role = p[2], name = p[3]}
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

-- host (server == '') or join (server = IP), then the synced netplay menu, like NETWORK > HOST/JOIN
local function netplay(server, label)
	L.inNet = true
	pcall(main.f_waitForPreloads, true)
	if main.f_connect(server, label) then
		if synchronize() then
			main.f_clearShuffleTables()
			main.f_menuSnap(motif[main.group])
			main.f_menuItemBgAnimReset(motif[main.group])
			fadeInInit(motif[main.group].fadein.FadeData)
			main.menu.submenu.server.loop()
		end
		replayStop()
		exitNetPlay()
		exitReplay()
		showSessionWarning()
	end
	L.inNet = false
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
	searching = 'looking for a match'}

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
				netplay('', inc.name)
				return true
			elseif pressed('cancel') then
				sound('cancel')
				command('decline', inc.cid)
				return false
			end
		end
	end
end

-- LOBBIES: list of players, challenge one. Returns 'done' after a netplay session, 'back' for the hub.
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
		local lines = {}
		local who = st.me and st.me.name or '?'
		table.insert(lines, 'You are: ' .. who)
		table.insert(lines, '')
		if not st.running then
			table.insert(lines, 'The lobby helper is not running.')
			table.insert(lines, 'It starts with the game when Python + discord_presence are set up.')
		elseif #st.peers == 0 then
			table.insert(lines, 'No one is on the game dumbass')
		else
			table.insert(lines, 'Pick your opponent:')
			table.insert(lines, '')
			if sel > #st.peers then sel = #st.peers end
			for i, p in ipairs(st.peers) do
				local line = (i == sel and '> ' or '   ') .. pad(p.name, 18) .. ' ' .. (statusText[p.status] or p.status)
				if not p.same then line = line .. '   [different build]' end
				table.insert(lines, line)
			end
		end
		table.insert(lines, '')

		if out then
			if out.state == 'waiting' then
				table.insert(lines, 'Challenging ' .. out.name .. '...   (ESC to cancel)')
			elseif out.state == 'accepted' then
				table.insert(lines, out.name .. ' accepted!  Connecting...')
				acceptedAt = acceptedAt or t
				if t - acceptedAt > 60 then   -- give the host a moment to start listening
					command('clear')
					local ip, name = out.ip, out.name
					netplay(ip, name)
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
			table.insert(lines, #st.peers > 0 and 'UP/DOWN: choose    CONFIRM: challenge    ESC: back' or 'ESC: back')
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
				elseif #st.peers > 0 and pressed('next') then
					sel = sel % #st.peers + 1
					sound('move')
				elseif #st.peers > 0 and pressed('previous') then
					sel = (sel - 2) % #st.peers + 1
					sound('move')
				elseif #st.peers > 0 and pressed('done') then
					local p = st.peers[sel]
					if p and (p.status == 'menu' or p.status == 'lobby') then
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
			netplay('', st.match.name)
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
			if t - acceptedAt > 60 then   -- give the host a moment to start listening
				command('clear')
				netplay(out.ip, out.name)
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
-- ONLINE LOBBY on the main menu where NETWORK was, and OPTIONS > Netplay Settings > Lobby Name
-- (menus are built after mods load). NETWORK (HOST GAME / JOIN GAME) is hidden: a group with an
-- empty display name is skipped by main.f_start. The hidden 'server' netplay menu is untouched.
pcall(main.f_appendItemname, motif.title_info.menu, '', 'arlobby', 'ONLINE LOBBY', 'menunetwork')
pcall(function() motif.title_info.menu.itemname.menunetwork = '' end)
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
