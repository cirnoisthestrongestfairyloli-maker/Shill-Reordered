-- Abstract Reordered: Discord Rich Presence status writer.
-- Ikemen GO autoloads every .lua in external/mods. This module only writes save/ar_presence.json;
-- discord_presence/ar_discord_presence.py reads it and talks to Discord.
-- Everything runs inside pcall, so a problem here can never stop the game.

local P = {
	file = 'save/ar_presence.json',
	last = nil,      -- last JSON written (only write on change)
	key = nil,       -- identity of the current activity, for the "elapsed" timer
	since = 0,
	tick = 0,
	inFight = false, -- set by the fight loop, used to label the pause menu
	fight = nil,     -- last fight info, reused while paused / after the match
}

local modeNames = {
	arcade = 'Arcade', versus = 'Versus', teamversus = 'Team Versus', versuscoop = 'Co-op Versus',
	teamcoop = 'Team Co-op', freebattle = 'Free Battle', training = 'Training', survival = 'Survival',
	survivalcoop = 'Survival Co-op', timeattack = 'Time Attack', bossrush = 'Boss Rush',
	scorechallenge = 'Score Challenge', timechallenge = 'Time Challenge', vs100kumite = 'VS 100 Kumite',
	netplayversus = 'Online Versus', netplayteamcoop = 'Online Team Co-op', netplaysurvivalcoop = 'Online Survival',
	watch = 'Watch', replay = 'Replay', demo = 'Demo', story = 'Story',
}

local function jsonStr(s)
	s = tostring(s or '')
	s = s:gsub('[%c"\\]', function(c)
		if c == '"' then return '\\"' end
		if c == '\\' then return '\\\\' end
		return string.format('\\u%04x', c:byte())
	end)
	return '"' .. s .. '"'
end

local function try(f, ...)
	local ok, v = pcall(f, ...)
	if ok then return v end
	return nil
end

local function modeId()
	local m = try(gameMode)
	if type(m) ~= 'string' then return '' end
	return m
end

local function modeLabel(m)
	if m == '' then return '' end
	return modeNames[m:lower()] or (m:sub(1, 1):upper() .. m:sub(2))
end

-- display names + folder keys of a side's selected characters (team members joined with " & ")
local function sideChars(side)
	local names, keys = {}, {}
	local p = start and start.p and start.p[side]
	if p and p.t_selected then
		for _, v in ipairs(p.t_selected) do
			local c = v.ref and main.t_selChars and main.t_selChars[v.ref + 1]
			if c then
				local n = c.name or try(getCharName, v.ref) or c.char or '?'
				table.insert(names, n)
				local k = (c.dir or ''):gsub('[/\\]+$', ''):match('([^/\\]+)$') or c.char or ''
				table.insert(keys, (k:lower():gsub('[^%w_]', '_')))
			end
		end
	end
	return table.concat(names, ' & '), keys[1] or ''
end

-- in fight, fall back to the engine's own displayname if the select data is missing
local function fighterName(side)
	if try(player, side) then
		return try(displayName) or try(name) or ''
	end
	return ''
end

local function stageName()
	local n = try(getStageNo)
	if n and main.t_selStages and main.t_selStages[n] and main.t_selStages[n].name then
		return main.t_selStages[n].name
	end
	return try(stageVar, 'info.displayname') or try(stageVar, 'info.name') or ''
end

local function write(state, t)
	t = t or {}
	local key = state .. '|' .. (t.key or '')
	if key ~= P.key then
		P.key = key
		P.since = try(os.time) or 0
	end
	local parts = {
		'"state":' .. jsonStr(state),
		'"mode":' .. jsonStr(t.mode or ''),
		'"mode_id":' .. jsonStr(t.mode_id or ''),
		'"p1":' .. jsonStr(t.p1 or ''),
		'"p2":' .. jsonStr(t.p2 or ''),
		'"p1_key":' .. jsonStr(t.p1_key or ''),
		'"p2_key":' .. jsonStr(t.p2_key or ''),
		'"stage":' .. jsonStr(t.stage or ''),
		'"round":' .. tostring(tonumber(t.round) or 0),
		'"match":' .. tostring(tonumber(t.match) or 0),
		'"winner":' .. jsonStr(t.winner or ''),
		'"since":' .. tostring(P.since),
	}
	local s = '{' .. table.concat(parts, ',') .. '}'
	if s == P.last then return end
	-- Ikemen's io.open(..., 'w') does not truncate: a shorter write leaves the old tail behind.
	-- Remove the file first and pad to a fixed size (trailing spaces are valid JSON).
	pcall(os.remove, P.file)
	local f = io.open(P.file, 'w')
	if f then
		local out = s
		if #out < 1024 then out = out .. string.rep(' ', 1024 - #out) end
		f:write(out)
		f:close()
		P.last = s
	end
end

local function matchInfo()
	local m = modeId()
	local p1, k1 = sideChars(1)
	local p2, k2 = sideChars(2)
	if p1 == '' then p1 = fighterName(1) end
	if p2 == '' then p2 = fighterName(2) end
	return {
		mode_id = m, mode = modeLabel(m), p1 = p1, p2 = p2, p1_key = k1, p2_key = k2,
		stage = stageName(), match = try(matchNo) or 0,
	}
end

local function onMenu()
	P.inFight = false
	write('menu')
end

local function onOptions()
	write('options')
end

local function onSelect()
	P.inFight = false
	local m = modeId()
	write('select', {mode_id = m, mode = modeLabel(m), key = m})
end

local function onVersus()
	local t = matchInfo()
	t.key = t.p1 .. t.p2 .. t.match
	P.fight = t
	write('versus', t)
end

local function onFight()
	P.inFight = true
	P.tick = P.tick + 1
	if P.pausedAt and P.tick - P.pausedAt < 5 then return end   -- pause menu is open
	if P.tick % 20 ~= 1 then return end   -- every 20 frames is plenty
	local m = modeId()
	if m == 'demo' then
		write('menu')
		return
	end
	local t = matchInfo()
	t.round = try(roundNo) or 0
	t.key = t.p1 .. t.p2 .. t.match   -- the timer runs per match, not per round
	P.fight = t
	write('fight', t)
end

local function onPause()
	if P.inFight and P.fight then
		P.pausedAt = P.tick
		write('paused', P.fight)
	end
end

local function onPostMatch()
	P.inFight = false
	P.tick = 0
	P.pausedAt = nil
	local t = P.fight or matchInfo()
	local winner = ''
	for side = 1, 2 do
		if try(player, side) then
			local w = try(win)
			if w == true or w == 1 then
				winner = side == 1 and t.p1 or t.p2
				break
			end
		end
	end
	local r = {}
	for k, v in pairs(t) do r[k] = v end
	r.winner = winner
	write('postmatch', r)
end

local function safe(f)
	return function(...)
		pcall(f, ...)
		return nil   -- start.postMatch uses hook.runFirst: never return a value
	end
end

if hook and hook.add then
	hook.add('main.menu.loop', 'arPresenceMenu', safe(onMenu))
	hook.add('options.menu.loop', 'arPresenceOptions', safe(onOptions))
	hook.add('start.f_selectScreen', 'arPresenceSelect', safe(onSelect))
	hook.add('start.f_selectVersus', 'arPresenceVersus', safe(onVersus))
	hook.add('loop', 'arPresenceFight', safe(onFight))
	hook.add('menu.menu.loop', 'arPresencePause', safe(onPause))
	hook.add('start.postMatch', 'arPresencePostMatch', safe(onPostMatch))
end

pcall(write, 'menu')
