-- Abstract Reordered: boot logo.
-- Replaces the Ikemen logo with one of the twelve boot clips (video/chio_*.webm), picked at random each launch,
-- never the same one twice in a row
-- and plays it only once per launch (not again when you come back to the main menu).
-- Storyboards: data/AbstractReordered/logo_chio_<name>.def (copies of logo.def pointing at each clip).

local clips = {'fuji', 'shidou', 'baldimore', 'naruto', 'main', 'zoro', 'watch', 'sailormoon', 'c1111', 'sj7', 'itoshidou', 'teio'}

-- the last clip played is saved in save/ar_logo.txt so the next launch can avoid it
local stateFile = 'save/ar_logo.txt'

local function nextClip()
	local last = 0
	local f = io.open(stateFile, 'r')
	if f then
		last = tonumber((f:read('*a') or ''):match('%d+')) or 0
		f:close()
	end
	-- random pick, but never the one that played last time
	pcall(function() math.randomseed(os.time()) end)
	local n = math.random(#clips)
	if n == last then
		n = (n + math.random(#clips - 1) - 1) % #clips + 1   -- shift to one of the other clips
	end
	pcall(os.remove, stateFile)   -- Ikemen's io.open(...,'w') does not truncate
	f = io.open(stateFile, 'w')
	if f then
		f:write(tostring(n) .. '\n')
		f:close()
	end
	return clips[n]
end

pcall(function()
	local cur = motif.files.logo.storyboard
	if cur == nil or cur == '' then return end
	local pick = nextClip()
	-- same folder as the screenpack's own logo.def, so paths resolve the same way
	motif.files.logo.storyboard = cur:gsub('[^/\\]+$', 'logo_chio_' .. pick .. '.def')
end)

if hook and hook.add then
	local played = false
	hook.add('main.menu.loop', 'arLogoOnce', function()
		-- this hook runs when the main menu opens, right before the logo storyboard would play
		if played then
			pcall(function() motif.files.logo.storyboard = '' end)
		end
		played = true
	end)
end
