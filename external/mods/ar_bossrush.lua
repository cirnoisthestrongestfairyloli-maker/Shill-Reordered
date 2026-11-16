--;===========================================================
--; Abstract Reordered: BOSS RUSH
--; CHALLENGE > BOSS RUSH. Pick one fighter, watch the intro, then fight eight bosses back to back:
--; no VS screen between fights, one round each, bosses at the hardest CPU level, life and meter carry
--; over (plus a heal after every win) and there is one continue for the whole run.
--; Bosses also build meter 50% faster (data/AbstractReordered/ar_bossrush.zss).
--; The fights themselves are driven by data/AbstractReordered/bossrush_path.lua.
--; Clears are recorded per character in save/ar_bossrush.txt (used to unlock the boss rush colour).
--;===========================================================
AR_BR = AR_BR or {}
local BR = AR_BR

-- the ladder, in order. Roster characters use a *_Boss.def beside their normal def: same character,
-- but the lifebar shows an epithet instead of the name.
-- Entry fields: char = folder (or def path) under chars/, stage = stage def,
-- music = optional track for that fight only (overrides BR.theme)
-- rounds = how many times the player has to beat that boss (default 1). The boss still only needs one win.
local BOUNDARY = 'stages/Collapsed Boundary.def'
BR.bosses = {
	{char = 'Haruhi_AR/Haruhi_Boss.def', stage = BOUNDARY},
	{char = 'Broly_AR/Broly_Boss.def', stage = BOUNDARY},
	{char = 'Yujiro/yujiro.def', stage = BOUNDARY},
	{char = 'DIO_AR/DIO_Boss.def', stage = BOUNDARY},
	{char = 'Marx', stage = 'stages/Marx_Stage.def', rounds = 2},
	{char = 'Accelerator', stage = BOUNDARY},
	{char = 'Kumagawa_AR/Kumagawa_Boss.def', stage = BOUNDARY},
	{char = 'Dracula', stage = BOUNDARY, rounds = 2},
}
BR.theme = 'sound/bossrush_theme.mp3'   -- plays through the whole run, every boss included
BR.selectMusic = 'sound/bossrush_select.mp3'   -- character select of boss rush
BR.ai = 8                -- hardest CPU level
BR.healPct = 25          -- % of max life healed after every win
BR.maxContinues = 1      -- continues for the whole run
BR.intro = 'data/AbstractReordered/bossrush_intro.def'
BR.outro = 'data/AbstractReordered/bossrush_win.def'   -- win cutscene, after the last boss
BR.pathScript = 'data/AbstractReordered/bossrush_path.lua'
BR.saveFile = 'save/ar_bossrush.txt'

local function isBR()
	return type(gameMode) == 'function' and gameMode('bossrush')
end

local function log(msg)
	if not BR.debugLog then
		return
	end
	local f = io.open(BR.debugLog, 'a')
	if f then
		f:write(tostring(msg) .. '\n')
		f:close()
	end
end
BR.log = log

--------------------------------------------------------------------- clears
-- one lower-case character folder name per line
local function charKey(def)
	local s = tostring(def or ''):lower():gsub('\\', '/')
	s = s:gsub('^chars/', ''):gsub('/.*$', ''):gsub('%.def$', '')
	return s
end
BR.charKey = charKey

function BR.loadClears()
	local t = {}
	local f = io.open(BR.saveFile, 'r')
	if f then
		for line in f:lines() do
			local k = line:match('^%s*([%w_%-%.]+)%s*$')
			if k then
				t[k] = true
			end
		end
		f:close()
	end
	return t
end

function BR.hasCleared(def)
	return BR.loadClears()[charKey(def)] == true
end

function BR.recordClear(def)
	local k = charKey(def)
	if k == '' then
		return
	end
	local t = BR.loadClears()
	if t[k] then
		return
	end
	t[k] = true
	local keys = {}
	for name in pairs(t) do
		keys[#keys + 1] = name
	end
	table.sort(keys)
	-- Ikemen's io.open(..., 'w') does not truncate, so remove the old file first
	pcall(os.remove, BR.saveFile)
	local f = io.open(BR.saveFile, 'w')
	if f then
		f:write(table.concat(keys, '\n') .. '\n')
		f:close()
	end
	log('clear recorded: ' .. k)
	BR.clearCache = nil   -- re-read on the next colour menu
end

--------------------------------------------------------------------- reward colour
-- character folder (lower case) -> the colour slot holding its boss rush colour (bossrush.act, always the
-- highest slot). cadenza.lua asks BR.unlocked() whether to show that slot on the colour menu.
BR.bossPal = {['cureblack_ar'] = 6, ['haruhi_ar'] = 12, ['homura_ar'] = 9, ['ichigo_ar'] = 13, ['ippo_ar'] = 13, ['kamijo_ar'] = 12, ['kumagawa_ar'] = 11, ['lilith_ar'] = 13, ['madoka_ar'] = 13, ['panty_ar'] = 13, ['ryuko_ar'] = 13, ['saber_ar'] = 8, ['saitama_ar'] = 8, ['satsuki_ar'] = 13, ['sayaka_ar'] = 13, ['sol_ar'] = 13, ['stocking_ar'] = 13, ['taiga_ar'] = 13, ['yoruichi_ar'] = 9}

-- The colour used to be a reward (hidden until that character cleared boss rush). It is now open to
-- everyone: set this to false to bring the lock back.
BR.coloursOpen = true

function BR.unlocked(key)
	if BR.coloursOpen then
		return true
	end
	-- online both players must see the same colour list or the two games drift apart, so the lock only
	-- applies offline
	local gm = type(gameMode) == 'function' and tostring(gameMode() or '') or ''
	if gm:match('^netplay') then
		return true
	end
	if BR.clearCache == nil then
		BR.clearCache = BR.loadClears()
	end
	return BR.clearCache[key] == true
end

--------------------------------------------------------------------- run state
function BR.resetRun()
	BR.introShown = false
	BR.continuesUsed = 0
	BR.loops = 0
	BR.music = nil
	BR.healedIdx = 0
	BR.p1power = nil
	BR.selTick = 0
end

-- called by the path script right before each launchFight
function BR.beginFight(i)
	BR.loops = 0
	BR.music = (BR.bosses[i] and BR.bosses[i].music) or BR.theme
end

-- every pass through launchFight's loop comes here: the second pass for the same boss is a continue
hook.add('launchFight', 'arBossRush', function(common, t, data)
	if not isBR() then
		return
	end
	BR.loops = (BR.loops or 0) + 1
	if BR.loops > 1 then
		BR.continuesUsed = (BR.continuesUsed or 0) + 1
	end
	t.continue = (BR.continuesUsed or 0) < BR.maxContinues
	t.quickcontinue = true
	log('fight ' .. tostring(matchNo()) .. ' pass ' .. BR.loops .. ' continuesUsed ' .. tostring(BR.continuesUsed)
		.. ' p1life ' .. tostring(start.p[1].t_selected[1] and start.p[1].t_selected[1].life))
end)

-- boss rush has its own character select music. Started on the second frame, after the select screen's
-- own music pick has run, so this one wins.
hook.add('start.f_selectScreen', 'arBossRushSelectMusic', function()
	if not isBR() then
		return
	end
	BR.selTick = (BR.selTick or 0) + 1
	if BR.selTick == 2 then
		pcall(playBgm, {bgm = BR.selectMusic, loop = 1, interrupt = true})
	end
end)

-- remember the player's meter while a fight runs, so the next fight can start with it
hook.add('loop', 'arBossRushPower', function()
	if not isBR() or type(player) ~= 'function' or type(power) ~= 'function' then
		return
	end
	local old = type(id) == 'function' and id() or nil
	if player(1) then
		local ok, v = pcall(power)
		if ok and tonumber(v) ~= nil then
			BR.p1power = tonumber(v)
		end
	end
	if old ~= nil then
		pcall(playerId, old)
	end
end)

-- wrappers are installed the first time the mode is picked, so they sit outside every other wrapper
local wrapped = false
local function installWrappers()
	if wrapped then
		return
	end
	wrapped = true
	-- life carries over (engine), plus a heal after every win
	local persistOrig = start.f_matchPersistence
	start.f_matchPersistence = function(...)
		local before = start.matchPersistenceStatsIdx or 0
		local ret = persistOrig(...)
		if isBR() and (start.matchPersistenceStatsIdx or 0) > before then
			local ok, stats = pcall(getGameStats)
			local matches = ok and stats and stats.Matches or {}
			local last = matches[#matches]
			local rounds = last and last.Rounds or {}
			local round = rounds[#rounds]
			local fighters = round and round.Fighters and round.Fighters[1] or {}
			for _, f in ipairs(fighters) do
				local sel = start.p[1].t_selected[(f.MemberNo or 0) + 1]
				local max = tonumber(f.LifeMax) or 0
				if sel ~= nil and max > 0 then
					local cur = tonumber(sel.life) or tonumber(f.Life) or max
					sel.life = math.max(1, math.min(max, math.floor(cur + max * BR.healPct / 100)))
					log('heal: ' .. tostring(cur) .. ' -> ' .. tostring(sel.life) .. ' / ' .. tostring(max))
				end
				-- meter carries over too (tracked every frame by the 'loop' hook below)
				if sel ~= nil and BR.p1power ~= nil then
					sel.power = BR.p1power
					log('meter kept: ' .. tostring(sel.power))
				end
			end
		end
		return ret
	end
	-- forced music for a fight (the boss rush theme): replaces whatever the music picker chose
	local buildOrig = start.f_buildLoadStartParams
	start.f_buildLoadStartParams = function(...)
		local s = buildOrig(...)
		if isBR() and BR.music ~= nil and type(s) == 'string' then
			local parts = {'music=' .. BR.music}
			for p in (s .. ','):gmatch('%s*(.-)%s*,') do
				if p ~= '' and not p:match('^music') then
					parts[#parts + 1] = p
				end
			end
			s = table.concat(parts, ', ')
		end
		return s
	end
end

--------------------------------------------------------------------- the mode
if main ~= nil and main.t_itemname ~= nil then
	main.t_itemname.bossrush = function(t, item)
		installWrappers()
		BR.resetRun()
		main.exitSelect = true
		main.luaPath = BR.pathScript
		main.makeRoster = false
		main.matchWins.draw = {0, 0}
		main.matchWins.single = {1, 1}
		main.motif.continuescreen = true
		main.motif.vsscreen = false
		main.motif.victoryscreen = false
		main.motif.winscreen = false
		main.persistLife = true
		main.persistMusic = true   -- the theme keeps playing between fights
		main.quickContinue = true
		main.stageMenu = false
		main.teamMenu[1].single = true
		main.teamMenu[2].single = true
		pcall(textImgSetText, motif.select_info.title.TextSpriteData, 'BOSS RUSH')
		if BR.test then
			-- automated test: CPU plays a forced fighter
			main.cpuSide[1] = true
			main.forceChar[1] = {start.f_getCharRef(BR.test.char)}
			main.selectMenu[1] = false
			if BR.test.time then
				main.roundTime = BR.test.time
			end
		else
			pcall(remapInput, 1, getLastInputController())
			pcall(remapInput, getLastInputController(), 1)
		end
		setGameMode('bossrush')
		if t ~= nil then
			hook.run('main.t_itemname', t, item)
		end
		log('mode start')
		return start.f_selectMode
	end
	-- CHALLENGE > BOSS RUSH, above SURVIVAL (menus are built after mods load)
	pcall(main.f_appendItemname, motif.title_info.menu, 'menumission', 'bossrush', 'BOSS RUSH', 'survival')
end
