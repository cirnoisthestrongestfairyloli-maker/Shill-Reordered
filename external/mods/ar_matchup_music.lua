-- Abstract Reordered: matchup music.
-- Ryuko Matoi vs Satsuki Kiryuin (either side) plays Kill la Kill OP2 "Ambiguous" for the whole match:
-- it starts with the intro and keeps going across rounds (if the engine switches back to the stage
-- music at a round start, the song is put back on), looping if the match runs long.
-- Once the match is over it leaves the music alone, so ar_winmusic.lua's victory music plays as usual.
-- Add more pairs to M.pairs. Everything runs inside pcall.

local M = {
	pairs = {
		{a = 'Ryuko Matoi', b = 'Satsuki Kiryuin', bgm = 'sound/KillLaKill_Ambiguous.mp3'},
	},
	cur = nil,      -- bgm of the matchup in progress
	started = false,
	pos = 0,        -- last known play position, so a new round resumes instead of restarting the song
}

local function try(f, ...)
	local ok, v = pcall(f, ...)
	if ok then return v end
	return nil
end

local function sideName(side)
	if try(player, side) then
		return try(name) or ''
	end
	return ''
end

local function matchup()
	local oldid = try(id)
	local n1, n2 = sideName(1), sideName(2)
	if oldid then pcall(playerId, oldid) end
	if n1 == '' or n2 == '' then return nil end   -- not in a match yet: decide later
	for _, p in ipairs(M.pairs) do
		if (n1 == p.a and n2 == p.b) or (n1 == p.b and n2 == p.a) then
			return p.bgm
		end
	end
	return false
end

local function tick()
	if try(gameMode) == 'demo' then return end
	local over = try(matchOver)
	if over == true or over == 1 then return end
	if M.cur == nil then
		M.cur = matchup()
	end
	if not M.cur then return end
	local playing = try(bgmVar, 'filename')
	local ours = playing and tostring(playing):find(M.cur:match('[^/]+$'), 1, true)
	if ours then
		M.pos = tonumber(try(bgmVar, 'position')) or M.pos
	end
	-- each round start the engine switches back to the stage music: put the song back where it was
	if not M.started or (playing and playing ~= '' and not ours) then
		pcall(playBgm, {bgm = M.cur, loop = 1, interrupt = true, startposition = M.started and M.pos or 0})
		M.started = true
	end
end

if hook and hook.add then
	hook.add('loop', 'arMatchupMusic', function()
		pcall(tick)
	end)
	hook.add('start.postMatch', 'arMatchupMusicReset', function()
		M.cur, M.started, M.pos = nil, false, 0
		return nil   -- runFirst hook: never return a value
	end)
end
