-- Abstract Reordered: BOSS RUSH match script (run by start.f_selectMode for the 'bossrush' game mode,
-- set up in external/mods/ar_bossrush.lua). Re-run from the top after a continue, so it resumes at matchNo().
local BR = AR_BR

-- intro cutscene, once per run
if matchNo() == 1 and not continued() and not BR.introShown then
	BR.introShown = true
	if not (BR.test and BR.test.skipIntro) then
		launchStoryboard(BR.intro)
	end
end

for i = matchNo(), #BR.bosses do
	local b = BR.bosses[i]
	BR.beginFight(i)
	BR.log('launch ' .. i .. ' ' .. b.char)
	local ok = launchFight{
		p1char = BR.test and {BR.test.char} or nil,   -- automated test only
		p2char = {b.char},
		p2numchars = 1,
		p2teammode = 'single',
		p1rounds = 1,
		p2rounds = 1,
		stage = b.stage,
		ai = BR.test and BR.test.ai or BR.ai,
		vsscreen = false,
		victoryscreen = false,
		winscreen = false,
		quickcontinue = true,
	}
	BR.log('result ' .. i .. ' ok=' .. tostring(ok) .. ' winner=' .. tostring(getWinnerTeam()) .. ' matchNo=' .. tostring(matchNo()))
	if not ok then
		return
	end
	-- launchFight also returns true after a loss with no continue left: that ends the run
	if getWinnerTeam() ~= 1 then
		setMatchNo(-1)
		return
	end
end

-- every boss beaten
local sel = start.p[1].t_selected[1]
if sel ~= nil then
	BR.recordClear(start.f_getCharData(sel.ref).char)
end
BR.log('run cleared')
setMatchNo(-1)
