-- Abstract Reordered: victory music.
-- Plays Wayside Stone when cadenza.lua's in-stage win screen comes up (same moment: the match is over,
-- there is a winner, and 50 frames have passed so the KO lands first). It keeps playing through the
-- post-match menu; the next screen (select, rematch fight, menu) starts its own music as usual.
-- Separate mod so the generated cadenza.lua does not need to change. Everything runs inside pcall.

local W = {
	bgm = 'sound/WaysideStone_Victory.mp3',
	delay = 50,   -- frames after the match ends, matches AR.drawVictory
	t = 0,
	played = false,
}

local function winner()
	local ok, w = pcall(getWinnerTeam)
	if ok and (w == 1 or w == 2) then return w end
	for side = 1, 2 do   -- fallback, like cadenza: ask each side if they won
		if player(side) then
			local okw, v = pcall(win)
			if okw and (v == true or v == 1) then return side end
		end
	end
	return nil
end

local function tick()
	if gameMode() == 'demo' then return end
	local oldid = id()
	if not player(1) then return end
	local rs, over = roundState(), matchOver()
	over = (over == true or over == 1)
	local w = over and winner() or nil
	playerId(oldid)
	if rs == nil or not over or rs < 3 or w == nil then
		W.t, W.played = 0, false
		return
	end
	W.t = W.t + 1
	if W.t >= W.delay and not W.played then
		W.played = true
		pcall(playBgm, {bgm = W.bgm, loop = 1, interrupt = true})
	end
end

if hook and hook.add then
	hook.add('loop', 'arWinMusic', function()
		pcall(tick)
	end)
	hook.add('start.postMatch', 'arWinMusicReset', function()
		W.t, W.played = 0, false
		return nil   -- runFirst hook: never return a value
	end)
end
