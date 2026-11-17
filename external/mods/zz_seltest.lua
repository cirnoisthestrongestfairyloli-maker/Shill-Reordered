-- Select screen check (Claude). Does nothing unless the game is started with AR_SELTEST set.
local mode = os.getenv and os.getenv('AR_SELTEST') or nil
if mode == nil or mode == '' then return end
local done = false
hook.add('main.menu.loop', 'selTest', function()
	if done then return end
	done = true
	local ok, err = pcall(function()
		main.f_default()
		local f = main.t_itemname.versus({{itemname = 'versus'}}, 1)
		f()
	end)
	local fh = io.open('save/ar_seltest.txt', 'w')
	fh:write(tostring(ok) .. ' ' .. tostring(err) .. '\n')
	fh:close()
	os.exit(0)
end)
