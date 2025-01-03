return {
	{
		"rcarriga/nvim-notify",
		dependencies = { "rcarriga/nvim-notify" },
		config = function()
			local job = require("plenary.job")
			job:new({
				command = "curl",
				args = { "https://vtip.43z.one" },
				on_exit = function(j, exit_code)
					local res = table.concat(j:result())
					if exit_code ~= 0 then
						res = "Error fetching tip: " .. res
					end
					-- Use vim.schedule to ensure this runs in the main thread
					vim.schedule(function()
						require("notify")(res)
					end)
				end,
			}):start()
		end,
	},
}
