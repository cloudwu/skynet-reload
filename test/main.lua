local skynet = require "skynet"

skynet.start(function()
	local s = skynet.newservice "echo_reload"
	local function echo(msg)
		return skynet.call(s, "lua", msg)
	end
	local i = 0
	while true do
		print(pcall(echo, i))
		i = i+ 1
	end
end)
