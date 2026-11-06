--;===========================================================
--; Abstract Reordered: Melty Blood Act Cadenza style select screen
--; Draws each character's big art (slides in on every cursor move), the bios (P1 ticker on top
--; scrolling left, P2 ticker on the bottom scrolling right) and name plates, swaps the grid
--; portraits for the custom ones, and holds the character sprite back until a character is
--; picked, then slides it in, and plays the picked character's win voice. Art lives in cadenza.sff (generated). Characters not listed below
--; keep their own portraits and simply show no art/bio.
--;===========================================================
local AR = {}

-- character folder name (lower case) -> sprite index in cadenza.sff and sprite widths
AR.data = {
	['haruhi_ar'] = {n = 0, plate_w = 227, bio_w = 2079, q = 7, win = {180, 2}},
	['ichigo_ar'] = {n = 1, plate_w = 197, bio_w = 1849, q = 4, win = {10, 40}, art_y = 700},
	['homura_ar'] = {n = 2, plate_w = 229, bio_w = 1794, q = 3, win = {5, 11}},
	['broly_ar'] = {n = 3, plate_w = 183, bio_w = 1643, q = 16, win = {3, 14}},
	['kuroko_ar'] = {n = 4, plate_w = 184, bio_w = 1797, q = 3, win = {9, 0}},
	['meisaku_ar'] = {n = 5, plate_w = 313, bio_w = 1624, q = 29, win = {181, 1}},
	['homer_ar'] = {n = 6, plate_w = 323, bio_w = 1631, q = 0, win = {0, 9}},
	['stocking_ar'] = {n = 7, plate_w = 281, bio_w = 1604, q = 3, win = {181, 0}},
	['sailor_mercury_ar'] = {n = 8, plate_w = 324, bio_w = 1554, q = 9, win = {181, 10}},
	['cureblack_ar'] = {n = 9, plate_w = 318, bio_w = 1567, q = 3, win = {0, 64}},
	['aoko_ar'] = {n = 10, plate_w = 189, bio_w = 1579, q = 13, win = {181, 0}},
	['jotaro_ar'] = {n = 11, plate_w = 234, bio_w = 1707, q = 3, win = {181, 0}},
	['ippo_ar'] = {n = 12, plate_w = 236, bio_w = 1531, q = 3, win = {0, 5}},
	['saber_ar'] = {n = 13, plate_w = 186, bio_w = 1834, q = 3, win = {3, 0}},
	['reimu_ar'] = {n = 14, plate_w = 189, bio_w = 1739, q = 40, win = {180, 0}},
	['kamijo_ar'] = {n = 15, plate_w = 193, bio_w = 2122, q = 3, win = {180, 0}},
	['gokublack_ar'] = {n = 16, plate_w = 317, bio_w = 1889, q = 40, win = {181, 0}},
	['vegeta_ar'] = {n = 17, plate_w = 184, bio_w = 1798, q = 40, win = {181, 0}},
	['madoka_ar'] = {n = 18, plate_w = 236, bio_w = 1992, q = 3, win = {10, 0}},
	['sayaka_ar'] = {n = 19, plate_w = 235, bio_w = 1845, q = 3, win = {10, 0}},
	['sol_ar'] = {n = 20, plate_w = 316, bio_w = 1859, q = 3, win = {181, 0}},
	['panty_ar'] = {n = 21, plate_w = 189, bio_w = 1827, q = 30, win = {181, 0}},
	['shiki_ar'] = {n = 22, plate_w = 189, bio_w = 1841, q = 16, win = {181, 0}},
	['taiga_ar'] = {n = 23, plate_w = 189, bio_w = 1658, q = 8, win = {180, 0}},
	['kumagawa_ar'] = {n = 24, plate_w = 226, bio_w = 1595, q = 3, win = {180, 0}},
}
AR.random = {n = 99, plate_w = 185, bio_w = 758}
AR.timeW = 169

AR.sffPath = 'data/AbstractReordered/cadenza.sff'
AR.artX = {330, 950}         -- big art bottom-centre, P1 / P2
AR.artY = 610
AR.artSlide = 380            -- how far the big art slides in from (pixels)
AR.artTime = 14              -- frames
AR.bioY = {16, 703}          -- P1 ticker (top), P2 ticker (bottom)
AR.bioDir = {-1, 1}          -- P1 scrolls left, P2 scrolls right
AR.bioSpeed = 2.5
AR.bioGap = 160
AR.plateY = 598
AR.spriteSlide = 460         -- the sprite slides in from off-screen once the character is picked
AR.spriteTime = 16
AR.timedModes = {'arcade', 'teamarcade', 'versus', 'teamversus', 'versuscoop'}   -- modes with a select time limit

local sff = nil
local anims = {}
local portraitAnims = {}
local wrapped = false
local st = {}                -- per side: ref, artT, bioX, picked, spriteT
for side = 1, 2 do
	st[side] = {ref = nil, artT = 0, bioX = 0, picked = false, spriteT = 0}
end
local facePos = {}           -- face positions as written in system.def
local defaultSnd = {}        -- select.snd as written in system.def (for characters without a win voice)

local function active()
	return motif ~= nil and motif.def ~= nil and motif.def:lower():find('abstractreordered') ~= nil
end

local function easeOut(t)
	t = math.min(1, math.max(0, t))
	return 1 - (1 - t) ^ 3
end

local function anim(g, i, layerno)
	local k = g .. ',' .. i .. ',' .. (layerno or 0)
	if anims[k] == nil then
		if sff == nil then
			sff = sffNew(AR.sffPath)
		end
		local a = animNew(sff, g .. ',' .. i .. ', 0,0, -1')
		animSetLocalcoord(a, motif.info.localcoord[1], motif.info.localcoord[2])
		animSetScale(a, 1, 1)
		animSetLayerno(a, layerno or 0)
		animUpdate(a)
		anims[k] = a
	end
	return anims[k]
end

local function keyOf(ch)
	if ch == nil or ch.char == nil then
		return nil
	end
	if ch.char == 'randomselect' then
		return 'randomselect'
	end
	local s = tostring(ch.char):gsub('\\', '/'):match('^[^/]+') or ''
	return (s:gsub('%.def$', '')):lower()
end

local function entryOf(ref)
	if ref == nil then
		return nil
	end
	local k = keyOf(main.t_selChars[ref + 1])
	if k == 'randomselect' then
		return AR.random, true
	end
	return AR.data[k], false
end

-- coming-soon slots: a 'skipslot' line in select.def is drawn as a framed black silhouette (cadenza.sff 7400,98)
function AR.addComingSoon(list)
	local bgItem, porItem
	for _, item in ipairs(list) do
		if bgItem == nil and item.anim == motif.select_info.cell.bg.AnimData then bgItem = item end
		if porItem == nil and portraitAnims[item.anim] then porItem = item end
	end
	if bgItem == nil or porItem == nil then
		return
	end
	local cols = motif.select_info.columns
	for row = 1, motif.select_info.rows do
		for col = 1, cols do
			local g = main.t_selGrid[(row - 1) * cols + col]
			local ch = g and g.chars and g.chars[1] and main.t_selChars[g.chars[1]]
			local cfg = motif.select_info.cell[(col - 1) .. '-' .. (row - 1)]
			if ch and ch.skip == 1 and not (cfg ~= nil and cfg.skip) then   -- not the stagger gaps (cell.6-1 / 6-3 skip)
				local t = start.t_grid[row][col]
				local bg, por = {}, {}
				for k, v in pairs(bgItem) do bg[k] = v end
				for k, v in pairs(porItem) do por[k] = v end
				bg.x = motif.select_info.pos[1] + t.x
				bg.y = motif.select_info.pos[2] + t.y
				por.anim = AR.comingSoonAnim or anim(7400, 98)
				AR.comingSoonAnim = por.anim
				por.scale = {1, 1}
				por.x = bg.x + motif.select_info.portrait.offset[1]
				por.y = bg.y + motif.select_info.portrait.offset[2]
				table.insert(list, bg)
				table.insert(list, por)
			end
		end
	end
end

-- swap grid portraits for the custom ones (drawn at their own size)
local function swapPortraits()
	if not wrapped then
		local orig = start.updateDrawList
		start.updateDrawList = function(...)
			local list = orig(...)
			for _, item in ipairs(list) do
				if portraitAnims[item.anim] then
					item.scale = {1, 1}
				end
			end
			pcall(AR.addComingSoon, list)
			return list
		end
		wrapped = true
	end
	local changed = false
	for _, ch in ipairs(main.t_selChars) do
		if not ch.ar_portrait and ch.char ~= nil then
			local d = AR.data[keyOf(ch)]
			if d ~= nil then
				local a = anim(7400, d.n)
				ch.cell_data = a
				ch.cell_data_ready = true
				ch.ar_portrait = true
				portraitAnims[a] = true
				changed = true
			end
		end
	end
	if changed then
		start.needUpdateDrawList = true
	end
end

local function sides()
	local t = {1}
	if main.selectMenu ~= nil and main.selectMenu[2] and start.c[2] ~= nil then
		table.insert(t, 2)
	end
	return t
end

-- true once this side has picked a character (palette menu open or selection done)
local function picked(side)
	local p = start.p[side]
	if p == nil then
		return false
	end
	if p.selEnd then
		return true
	end
	for _, v in ipairs(p.t_selCmd or {}) do
		if (v.selectState or 0) > 0 then
			return true
		end
	end
	return false
end

-- the engine draws the sprite at face.pos + face.offset: hide it until picked, then slide it in
local function placeSprite(side)
	local f = motif.select_info['p' .. side].face
	if f == nil or f.pos == nil then
		return
	end
	if facePos[side] == nil then
		facePos[side] = {f.pos[1], f.pos[2]}
	end
	local s = st[side]
	local now = picked(side)
	if now and not s.picked then
		s.spriteT = 0
	end
	s.picked = now
	if not now then
		f.pos[1], f.pos[2] = facePos[side][1], facePos[side][2] + 3000
		return
	end
	s.spriteT = s.spriteT + 1
	local dir = side == 1 and -1 or 1
	f.pos[1] = facePos[side][1] + dir * AR.spriteSlide * (1 - easeOut(s.spriteT / AR.spriteTime))
	f.pos[2] = facePos[side][2]
end

local function drawBio(side, d)
	local s = st[side]
	local a = anim(7800, d.n)
	local span = d.bio_w + AR.bioGap
	s.bioX = s.bioX + AR.bioDir[side] * AR.bioSpeed
	if s.bioX < -span then
		s.bioX = s.bioX + span
	elseif s.bioX > 0 then
		s.bioX = s.bioX - span
	end
	-- tile the strip across the screen so the ticker never runs dry
	local x = s.bioX
	while x < 1280 do
		main.f_animPosDraw(a, x, AR.bioY[side], 1)
		x = x + span
	end
end

-- rare select screen music: 1 in 10 visits play this instead of the normal select track
AR.rareSelectBgm = 'sound/SevenRingsInHand_Vocals.mp3'
AR.rareSelectChance = 10
AR.selFrames = 0
pcall(function() math.randomseed(os.time()) end)

local function rollSelectMusic()
	if math.random(AR.rareSelectChance) == 1 then
		pcall(playBgm, {bgm = AR.rareSelectBgm, loop = 1, interrupt = true})
	end
end

hook.add('main.menu.loop', 'abstractReorderedSelectMusic', function()
	AR.selFrames = 0
end)

-- behind the grid: big art + bio tickers (runs right after the layer 0 background)
function AR.drawBack()
	AR.selFrames = AR.selFrames + 1
	if AR.selFrames == 1 then
		rollSelectMusic()
	end
	swapPortraits()
	-- Act Cadenza style time limit in arcade and versus (the select timer picks for you when it runs out)
	local timed = false
	for _, m in ipairs(AR.timedModes) do
		timed = timed or gameMode(m)
	end
	if timed then
		motif.select_info.timer.count = 99
	else
		motif.select_info.timer.count = -1
	end
	for side = 1, 2 do
		placeSprite(side)
	end
	for _, side in ipairs(sides()) do
		local s = st[side]
		local c = start.c[side]
		local ref = c and c.selRef
		if ref ~= s.ref then
			s.ref = ref
			s.artT = 0
			s.bioX = 0
		end
		s.artT = s.artT + 1
		local d, isRandom = entryOf(ref)
		-- the voice played when this side picks: the hovered character's own win voice
		local snd = motif.select_info['p' .. side].select.snd
		if defaultSnd[side] == nil then
			defaultSnd[side] = {snd[1], snd[2]}
		end
		local w = (d ~= nil and not isRandom and d.win) or defaultSnd[side]
		snd[1], snd[2] = w[1], w[2]
		if d ~= nil then
			if not isRandom then
				local dir = side == 1 and -1 or 1
				local x = AR.artX[side] + dir * AR.artSlide * (1 - easeOut(s.artT / AR.artTime))
				main.f_animPosDraw(anim(7700, d.n), x, d.art_y or AR.artY, side == 1 and 1 or -1)
			end
			drawBio(side, d)
		end
	end
end

-- in front of everything: name plates and the time limit label
function AR.drawFront()
	for _, side in ipairs(sides()) do
		local d = entryOf(st[side].ref)
		if d ~= nil then
			local x = side == 1 and 16 or (1264 - d.plate_w)
			main.f_animPosDraw(anim(7900, d.n, 2), x, AR.plateY, 1)  -- layer 2: in front of the character sprites
		end
	end
	if motif.select_info.timer.count ~= -1 then
		main.f_animPosDraw(anim(7950, 0, 2), 640 - AR.timeW / 2, 92, 1)
	end
end

local bgDrawOrig = bgDraw
function bgDraw(bg, layer, ...)
	bgDrawOrig(bg, layer, ...)
	if layer == 0 and active() and motif.selectbgdef ~= nil and bg == motif.selectbgdef.BGDef then
		AR.drawBack()
	end
end

hook.add('start.f_selectScreen', 'abstractReorderedCadenza', function()
	if active() then
		AR.drawFront()
		pcall(AR.drawMusic)
	end
end)

-- stage-select music picker: tracks from the game's Music folder (names baked into cadenza.sff 7970/7971 by
-- cadenza_build.py, so rebuild after adding songs). Up/Down switches between the stage row and the music row,
-- Left/Right changes the highlighted one; the chosen track replaces the stage's music for the match.
AR.music = {
	{path = '*', w = 149, wh = 183},
	{path = '', w = 183, wh = 217},
	{path = 'Music/Aozaki Aoko.mp3', w = 173, wh = 206},
	{path = 'Music/Bleach - Instant War Cry.mp3', w = 267, wh = 299},
	{path = 'Music/Bleach - Stinger.mp3', w = 200, wh = 233},
	{path = 'Music/Blue Exorcist -Wired Life.mp3', w = 270, wh = 303},
	{path = 'Music/Broly - Day After Day.mp3', w = 246, wh = 278},
	{path = 'Music/Butter Building - Super Smash Bros. Brawl.mp3', w = 412, wh = 446},
	{path = 'Music/Children of the City (E-102 Gamma Mix).mp3', w = 394, wh = 428},
	{path = 'Music/Futari wa Pretty Cure.mp3', w = 243, wh = 276},
	{path = 'Music/Goku Black\'s Theme - FighterZ.mp3', w = 318, wh = 351},
	{path = 'Music/Haruhi - Parallel Days.mp3', w = 246, wh = 278},
	{path = 'Music/Homura - Absolute configuration.mp3', w = 339, wh = 372},
	{path = 'Music/Ichigo - Glimmering Getsuga.mp3', w = 304, wh = 337},
	{path = 'Music/Ippo - inner light.mp3', w = 210, wh = 243},
	{path = 'Music/Jotaro Kujo Theme.mp3', w = 223, wh = 256},
	{path = 'Music/Kouchou Kouchou.mp3', w = 215, wh = 248},
	{path = 'Music/Kuroko - Judgement desu no!.mp3', w = 310, wh = 344},
	{path = 'Music/La Soldier.mp3', w = 152, wh = 185},
	{path = 'Music/Looping the rooms.mp3', w = 225, wh = 257},
	{path = 'Music/Madoka - Connect.mp3', w = 219, wh = 252},
	{path = 'Music/Megaman X4 - Makenai Ai Ga Kitto Aru Opening.mp3', w = 463, wh = 497},
	{path = 'Music/Meiling - Chinese Maiden! ~ Shanghai Teahouse.mp3', w = 457, wh = 490},
	{path = 'Music/Onslaught.mp3', w = 154, wh = 187},
	{path = 'Music/Panty&Stocking - New Fly Away.mp3', w = 333, wh = 365},
	{path = 'Music/Reimu - Sealing Charm, Blessed Light.mp3', w = 373, wh = 406},
	{path = 'Music/Saber - The Sword Of Promised Victory.mp3', w = 389, wh = 421},
	{path = 'Music/Sakuya - The Elegant Flower which Blooms at Night.mp3', w = 487, wh = 520},
	{path = 'Music/Sayaka - Decretum & Conturbatio.mp3', w = 345, wh = 378},
	{path = 'Music/Shadow the Hedgehog - Space Gadget.mp3', w = 384, wh = 417},
	{path = 'Music/Sol Badguy - Keep Yourself Alive 2.mp3', w = 349, wh = 383},
	{path = 'Music/Sonic Adventure - Welcome to Station Square (Lo-Fi Remix).mp3', w = 552, wh = 586},
	{path = 'Music/Taiga -Tiger VS Dragon.mp3', w = 261, wh = 294},
	{path = 'Music/Touma - Saijaku VS Saikyou.mp3', w = 296, wh = 329},
	{path = 'Music/Vegeta\'s Theme - FighterZ.mp3', w = 284, wh = 317},
}
AR.musicSel = 1          -- index into AR.music: 1 = random Music track (default), 2 = the stage's own music
AR.randomPick = nil      -- the track RANDOM resolved to for this match
AR.musicFocus = false    -- true while Left/Right changes the music instead of the stage
AR.musicY = 241

local function stagePhase()
	return main.stageMenu and start.p ~= nil and start.p[1] ~= nil and start.p[2] ~= nil
		and start.p[1].selEnd and start.p[2].selEnd and start.p[1].teamEnd and start.p[2].teamEnd
end

local function moveSnd()
	pcall(sndPlay, motif.Snd, motif.select_info.stage.move.snd[1], motif.select_info.stage.move.snd[2])
end

-- the path to use for the match: RANDOM picks one Music track once per character select
function AR.musicPath()
	local m = AR.music[AR.musicSel]
	if m == nil or m.path == '' then
		return ''
	end
	if m.path ~= '*' then
		return m.path
	end
	if AR.randomPick == nil then
		local n = #AR.music - 2
		AR.randomPick = n > 0 and AR.music[math.random(n) + 2].path or ''
	end
	return AR.randomPick
end

function AR.musicPreview()
	local m = AR.music[AR.musicSel]
	if m == nil or m.path == '' or m.path == '*' then
		pcall(playBgm, {source = 'motif.select', interrupt = true})
	else
		pcall(playBgm, {bgm = m.path, loop = 1, interrupt = true})
	end
end

-- characters whose SFF keeps effect palettes in group 1 (Broly: 1,13+ are transformation/flash palettes):
-- with Config.PaletteMax = 100 the select screen offered all of them, so only keep the real colours
AR.palLimit = {['broly_ar'] = 12}

local function trimPals(ch)
	if ch == nil or ch.pal == nil or ch.char == nil then
		return
	end
	local lim = AR.palLimit[tostring(ch.char):lower():gsub('[/\\].*$', '')]
	if lim == nil or #ch.pal <= lim then
		return
	end
	local keep = {}
	for _, p in ipairs(ch.pal) do
		if p <= lim then
			keep[#keep + 1] = p
		end
	end
	ch.pal = keep
end

if start ~= nil and start.f_getCharData ~= nil and not AR.charDataWrapped then
	AR.charDataWrapped = true
	local getOrig = start.f_getCharData
	start.f_getCharData = function(...)
		local ch = getOrig(...)
		pcall(trimPals, ch)
		return ch
	end
end

if start ~= nil and start.f_stageMenu ~= nil and not AR.stageMenuWrapped then
	AR.stageMenuWrapped = true
	local stageMenuOrig = start.f_stageMenu
	start.f_stageMenu = function(...)
		if #AR.music > 1 then
			local keys = motif.select_info.cell
			if getInput(-1, keys.up.key) or getInput(-1, keys.down.key) then
				AR.musicFocus = not AR.musicFocus
				moveSnd()
				return
			end
			if AR.musicFocus then
				local d = 0
				if getInput(-1, keys.left.key) then
					d = -1
				elseif getInput(-1, keys.right.key) then
					d = 1
				end
				if d ~= 0 then
					AR.musicSel = (AR.musicSel - 1 + d) % #AR.music + 1
					moveSnd()
					AR.musicPreview()
				end
				return
			end
		end
		return stageMenuOrig(...)
	end
end

if start ~= nil and start.f_buildLoadStartParams ~= nil and not AR.loadParamsWrapped then
	AR.loadParamsWrapped = true
	local buildOrig = start.f_buildLoadStartParams
	start.f_buildLoadStartParams = function(...)
		local s = buildOrig(...)
		local path = AR.musicPath()
		if path ~= '' and type(s) == 'string' then
			local parts = {'music=' .. path}
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

hook.add('start.f_selectReset', 'abstractReorderedMusicReset', function()
	AR.musicSel = 1
	AR.randomPick = nil
	AR.musicFocus = false
end)

function AR.drawMusic()
	if #AR.music <= 1 or not stagePhase() then
		return
	end
	local m = AR.music[AR.musicSel]
	if AR.musicFocus then
		main.f_animPosDraw(anim(7971, AR.musicSel - 1, 2), 640 - m.wh / 2, AR.musicY, 1)
	else
		main.f_animPosDraw(anim(7970, AR.musicSel - 1, 2), 640 - m.w / 2, AR.musicY, 1)
	end
end

-- Under Night In-Birth style VS screen: both arts slide in on slanted colour bands, names, big VS
AR.vsT = 0

-- during a fight start.p[side].t_selected is already empty: find the fighter's select slot by its name instead
local nameRef = nil
local function fighterRef(side)
	if type(player) ~= 'function' or type(id) ~= 'function' then
		return nil
	end
	if nameRef == nil then
		nameRef = {}
		for k, ch in ipairs(main.t_selChars) do
			if ch.char ~= nil and type(getCharName) == 'function' then
				local ok, n = pcall(getCharName, k - 1)
				if ok and n ~= nil and nameRef[tostring(n):lower()] == nil then
					nameRef[tostring(n):lower()] = k - 1
				end
			end
		end
	end
	local oldid = id()
	local ref = nil
	if player(side) then
		for _, fn in ipairs({name, displayName}) do
			if ref == nil and type(fn) == 'function' then
				local ok, n = pcall(fn)
				if ok and n ~= nil then
					ref = nameRef[tostring(n):lower()]
				end
			end
		end
	end
	playerId(oldid)
	return ref
end

local function selectedEntry(side)
	local p = start.p ~= nil and start.p[side] or nil
	local ref = p ~= nil and p.t_selected ~= nil and p.t_selected[1] ~= nil and p.t_selected[1].ref or nil
	if ref == nil then
		ref = fighterRef(side)
	end
	if ref == nil then
		return nil
	end
	local d, isRandom = entryOf(ref)
	if isRandom then
		return nil
	end
	return d
end

function AR.drawVersus()
	AR.vsT = AR.vsT + 1
	local t = AR.vsT
	main.f_animPosDraw(anim(7660, 0, 2), 0, 0, 1)
	for side = 1, 2 do
		local dir = side == 1 and -1 or 1
		local eb = easeOut(t / 14)
		local bx = (side == 1 and 0 or 520) + dir * 760 * (1 - eb)
		main.f_animPosDraw(anim(7661, side - 1, 2), bx, 0, 1)
		local d = selectedEntry(side)
		if d ~= nil then
			local ea = easeOut((t - 6) / 18)
			local x = (side == 1 and 330 or 950) + dir * 520 * (1 - ea)
			main.f_animPosDraw(anim(7700, d.n, 2), x, d.art_y or 690, side == 1 and 1 or -1)
			local ep = easeOut((t - 16) / 14)
			local px = (side == 1 and 40 or (1240 - d.plate_w)) + dir * 560 * (1 - ep)
			main.f_animPosDraw(anim(7900, d.n, 2), px, 610, 1)
		end
	end
	if t >= 22 then
		local s = math.max(1, 2.4 - (t - 22) * 0.14)
		local a = anim(7662, 0, 2)
		animSetScale(a, s, s)
		main.f_animPosDraw(a, 640, 330, 1)
	end
end

hook.add('start.f_selectVersus', 'abstractReorderedVersus', function()
	AR.selFrames = 0
	if active() then
		AR.drawVersus()
	end
end)

-- In-stage victory (Under Night In-Birth II style): the stage dims, the winner's art slides in
-- and their win quote shows in a box. The engine's separate victory screen is turned off in system.def.
AR.vic = {t = 0, quote = 0}

-- this Ikemen build has no winnerTeam() for Lua: ask each side's player if they won, else compare life
local function winnerSide()
	for side = 1, 2 do
		if player(side) then
			local ok, v = pcall(win)
			if ok and (v == true or v == 1) then
				return side
			end
		end
	end
	local l = {}
	for side = 1, 2 do
		if player(side) then
			local ok, v = pcall(life)
			l[side] = ok and tonumber(v) or nil
		end
	end
	if l[1] ~= nil and l[2] ~= nil and l[1] ~= l[2] then
		return l[1] > l[2] and 1 or 2
	end
	return nil
end

local function fightInfo()
	local oldid = id()
	if not player(1) then
		return nil
	end
	local rs, over = roundState(), matchOver()
	local w = (over == true or over == 1) and winnerSide() or nil
	playerId(oldid)
	return rs, over, w
end

-- the visible part of the 1280x720 motif space during a fight: a 4:3 stage shows only the middle 960, and the 640x480
-- lifebar is scaled to that width. Returns the left edge, the width and the portrait scale (art is 2x of 640 space).
local function fightView()
	local W, H = motif.info.localcoord[1], motif.info.localcoord[2]
	local aspect = W / H
	local oldid = id()
	if player(1) then
		local okw, gw = pcall(gameWidth)
		local okh, gh = pcall(gameHeight)
		if okw and okh and tonumber(gw) and tonumber(gh) and tonumber(gh) > 0 then
			aspect = tonumber(gw) / tonumber(gh)
		end
	end
	playerId(oldid)
	local vw = math.min(W, H * aspect)
	return (W - vw) / 2, vw, vw / W
end

function AR.drawVictory()
	local rs, over, w = fightInfo()
	over = (over == true or over == 1)       -- the engine may return a bool or 0/1 (0 is true in Lua)
	if rs == nil or not over or rs < 3 or (w ~= 1 and w ~= 2) then
		AR.vic.t = 0
		return
	end
	local d = selectedEntry(w)
	if d == nil then
		return
	end
	AR.vic.t = AR.vic.t + 1
	local t = AR.vic.t - 50                  -- a moment for the KO to land first
	if t < 1 then
		return
	end
	if t == 1 then
		AR.vic.quote = (d.q or 0) > 0 and math.random(0, d.q - 1) or -1
	end
	local dim = anim(7670, 0, 2)
	animSetAlpha(dim, math.floor(256 * math.min(1, t / 12)), 0)
	main.f_animPosDraw(dim, 0, 0, 1)
	-- laid out inside the visible area (a 4:3 stage shows only the middle 960 of 1280); name and quote shrink with it
	local x0, vw, k = fightView()
	local dir = w == 1 and -1 or 1
	local eb = easeOut((t - 8) / 16)
	main.f_animPosDraw(anim(7671, 0, 2), -dir * 1280 * (1 - eb), 520, 1)
	local ea = easeOut(t / 18)
	main.f_animPosDraw(anim(7700, d.n, 2), x0 + (w == 1 and 0.26 or 0.74) * vw + dir * 520 * k * (1 - ea), 700, w == 1 and 1 or -1)
	local tx = x0 + (w == 1 and 0.36 or 0.04) * vw
	local plate = anim(7900, d.n, 2)              -- shared with the VS screen: scale back to 1 after drawing
	animSetScale(plate, k, k)
	main.f_animPosDraw(plate, tx - dir * 300 * k * (1 - eb), 530, 1)
	animSetScale(plate, 1, 1)
	if AR.vic.quote >= 0 and t >= 20 then
		local q = anim(7680, d.n * 50 + AR.vic.quote, 2)
		animSetScale(q, k, k)
		main.f_animPosDraw(q, tx, 530 + 80 * k, 1)
		animSetScale(q, 1, 1)
	end
end

-- Fight HUD for the purple Melty Blood AA lifebars (mbaa/AR_MBAA.def): AR corner portraits, and at the start of
-- every round both characters' art rises from the bottom, slowly grows, then splits apart as ROUND N shows
-- (AR_MBAA.def starts the round call at round.time = 10; its "Round N" text appears ~40 ticks later, at AR.introGrow).
AR.hud = {rs = -1, t = 0}
AR.introRise = 20            -- ticks: rise from the bottom
AR.introGrow = 50            -- ...slowly grow until here (ROUND N appears)
AR.introSplit = 72           -- ...then split apart and fade out by here
AR.introGap = 230            -- each art's distance from the centre before the split
local hudAnims = {}

local function mbaaHud()
	return motif.files ~= nil and type(motif.files.fight) == 'string' and motif.files.fight:lower():find('mbaa') ~= nil
end

-- corner portraits: same set-up as the victory overlay (motif space, layer 2). The 640x480 lifebar is shown at 2x
-- across the 1280 wide screen, and the art is made at 2x, so it is drawn at scale 1 from the top corners.
local function hudAnim(g, i, layerno)
	local k = g .. ',' .. i .. ',' .. layerno
	if hudAnims[k] == nil then
		if sff == nil then
			sff = sffNew(AR.sffPath)
		end
		local a = animNew(sff, g .. ',' .. i .. ', 0,0, -1')
		animSetLocalcoord(a, motif.info.localcoord[1], motif.info.localcoord[2])
		animSetScale(a, 1, 1)
		animSetLayerno(a, layerno)
		animUpdate(a)
		hudAnims[k] = a
	end
	return hudAnims[k]
end

local function barsHidden()
	local oldid = id()
	local hidden = false
	if player(1) then
		local ok, v = pcall(isAsserted, 'nobardisplay')
		hidden = ok and (v == true or v == 1)
	end
	playerId(oldid)
	return hidden
end

-- own copies of the big art (scale / alpha change every frame; the VS screen and victory overlay share anim())
local introAnims = {}
local function introAnim(n)
	if introAnims[n] == nil then
		if sff == nil then
			sff = sffNew(AR.sffPath)
		end
		local a = animNew(sff, '7700,' .. n .. ', 0,0, -1')
		animSetLocalcoord(a, motif.info.localcoord[1], motif.info.localcoord[2])
		animSetLayerno(a, 2)               -- above the round call's dark magic-circle bands
		animUpdate(a)
		introAnims[n] = a
	end
	return introAnims[n]
end

local function drawIntro(side, d, t)
	local a = introAnim(d.n)
	local rise = easeOut(t / AR.introRise)
	local grow = math.min(1, math.max(0, (t - AR.introRise) / (AR.introGrow - AR.introRise)))
	local split = math.min(1, math.max(0, (t - AR.introGrow) / (AR.introSplit - AR.introGrow))) ^ 2
	local s = 0.95 + 0.2 * grow
	local dir = side == 1 and -1 or 1
	animSetScale(a, s, s)
	animSetAlpha(a, math.floor(256 * (1 - split)), 0)
	main.f_animPosDraw(a, 640 + dir * (AR.introGap + 900 * split), 720 + 620 * (1 - rise), side == 1 and 1 or -1)
end

function AR.drawHud()
	local rs = fightInfo()
	if rs == nil then
		AR.hud.rs = -1
		return
	end
	if rs ~= AR.hud.rs then
		AR.hud.rs = rs
		AR.hud.t = 0
	end
	if not barsHidden() then
		local x0, vw, k = fightView()
		if not AR.hudLogged and rs == 2 then      -- once per launch, for diagnosing the HUD
			AR.hudLogged = true
			local f = io.open('save/ar_hud_debug.txt', 'w')
			if f then
				local d1, d2 = selectedEntry(1), selectedEntry(2)
				f:write(string.format('view x0=%s w=%s scale=%s\np1 entry=%s p2 entry=%s\n', tostring(x0), tostring(vw),
					tostring(k), tostring(d1 and d1.n), tostring(d2 and d2.n)))
				f:close()
			end
		end
		for side = 1, 2 do
			local d = selectedEntry(side)
			if d ~= nil then
				local a = hudAnim(7460, d.n, 2)
				animSetScale(a, k, k)
				main.f_animPosDraw(a, side == 1 and x0 or x0 + vw, 0, side == 1 and 1 or -1)
			end
		end
	end
	if rs == 2 and AR.hud.t < AR.introSplit then
		AR.hud.t = AR.hud.t + 1
		for side = 1, 2 do
			local d = selectedEntry(side)
			if d ~= nil then
				drawIntro(side, d, AR.hud.t)
			end
		end
	end
end

hook.add('loop', 'abstractReorderedVictory', function()
	AR.selFrames = 0
	if active() then
		AR.vsT = 0
		if mbaaHud() then
			local ok, err = pcall(AR.drawHud)
			if not ok and not AR.hudErr then
				AR.hudErr = true                 -- first error only, so a broken HUD can be diagnosed
				local f = io.open('save/ar_hud_error.txt', 'w')
				if f then
					f:write(tostring(err) .. '\n')
					f:close()
				end
			end
		end
		local ok = pcall(AR.drawVictory)
		if not ok then
			AR.vic.t = 0
		end
	end
end)

-- After a match (versus / free battle): REMATCH, CHARACTER SELECT or MAIN MENU.
-- start.lua runs hook 'start.postMatch' right after the fight and acts on the returned choice.
AR.postModes = {'versus', 'teamversus', 'versuscoop', 'freebattle'}
AR.postChoices = {'rematch', 'select', 'menu'}

local function postSound(which)
	pcall(function()
		local c = motif.title_info.cursor[which].snd
		sndPlay(motif.Snd, c[1], c[2])
	end)
end

function AR.postMatch()
	local on = false
	for _, m in ipairs(AR.postModes) do
		on = on or gameMode(m)
	end
	if not on then
		return nil
	end
	local m = motif.title_info.menu
	local w = getWinnerTeam()
	local d = (w == 1 or w == 2) and selectedEntry(w) or nil
	local sel, t = 1, 0
	while true do
		t = t + 1
		clearColor(16, 4, 30)
		main.f_animPosDraw(anim(7660, 0, 2), 0, 0, 1)
		if d ~= nil then
			local ea = easeOut(t / 18)
			main.f_animPosDraw(anim(7700, d.n, 2), 330 - 400 * (1 - ea), 700, 1)
		end
		main.f_animPosDraw(anim(7693, 0, 2), 640 + 640 * (1 - easeOut(t / 14)), 0, 1)
		main.f_animPosDraw(anim(7692, 0, 2), 700, 170, 1)
		for k = 1, #AR.postChoices do
			main.f_animPosDraw(anim(k == sel and 7691 or 7690, k - 1, 2), 680, 300 + (k - 1) * 90, 1)
		end
		if t > 20 then                       -- ignore buttons still held from the fight
			if getInput(-1, m.next.key) then
				sel = sel % #AR.postChoices + 1
				postSound('move')
			elseif getInput(-1, m.previous.key) then
				sel = (sel - 2) % #AR.postChoices + 1
				postSound('move')
			elseif getInput(-1, m.done.key) then
				postSound('done')
				return AR.postChoices[sel]
			elseif esc() then
				return 'select'
			end
		end
		refresh()
	end
end

hook.add('start.postMatch', 'abstractReorderedPostMatch', function()
	if active() then
		local ok, choice = pcall(AR.postMatch)
		if ok then
			return choice
		end
	end
	return nil
end)

-- pause menu Command List: the character's art on the left, beside their movelist
AR.movelistChars = {['saber_ar'] = true, ['reimu_ar'] = true, ['haruhi_ar'] = true, ['ichigo_ar'] = true, ['homura_ar'] = true, ['broly_ar'] = true, ['kuroko_ar'] = true,
	['meisaku_ar'] = true, ['stocking_ar'] = true, ['sailor_mercury_ar'] = true, ['cureblack_ar'] = true, ['aoko_ar'] = true,
	['jotaro_ar'] = true, ['ippo_ar'] = true, ['kamijo_ar'] = true, ['gokublack_ar'] = true, ['vegeta_ar'] = true,
	['madoka_ar'] = true, ['sayaka_ar'] = true, ['sol_ar'] = true, ['kumagawa_ar'] = true}
AR.movelistArtX = 260
AR.movelistArtY = 712
AR.movelistArtScale = 1.0

function AR.drawMovelistArt(ref)
	if ref == nil or main.t_selChars[ref + 1] == nil then
		return
	end
	local key = keyOf(main.t_selChars[ref + 1])
	local d = AR.data[key]
	if d == nil or not AR.movelistChars[key] then
		return
	end
	local a = anim(7700, d.n, 2)
	animSetScale(a, AR.movelistArtScale, AR.movelistArtScale)
	main.f_animPosDraw(a, AR.movelistArtX, AR.movelistArtY, 1)
end

if menu ~= nil and menu.f_commandlistRender ~= nil then
	local commandlistRenderOrig = menu.f_commandlistRender
	menu.f_commandlistRender = function(sec, t, ...)
		-- drawn first, so the list (and its dark overlay, right side only) sits on top:
		-- the pause menu's purple gradient (the Command List screen doesn't draw it), then the art
		if active() then
			-- the pause menu's purple gradient (the Command List screen doesn't draw its background)
			main.f_animPosDraw(anim(7602, 0, 2), 0, 0, 1)
			if t ~= nil and t.tbl ~= nil then
				AR.drawMovelistArt(t.tbl.ref)
			end
		end
		return commandlistRenderOrig(sec, t, ...)
	end
end

return AR
