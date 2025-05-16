return {
	{
		"rcarriga/nvim-notify",
		event = "VeryLazy",
		opts = {
			stages = "fade",
			timeout = 3000,
			max_width = 50,
			max_height = 10,
			fade = {
				delay = 100,
				duration = 200,
			},
			background_colour = "#000000",
			render = "compact",
		},
		config = function(_, opts)
			local notify = require("notify")
			notify.setup(opts)
			vim.notify = notify
		end,
		keys = {
			{
				"<leader>a",
				function()
					require("notify").dismiss({ silent = true, pending = true })
				end,
				desc = "Dismiss all notifications",
			},
		},
		init = function()
			vim.notify = function(msg, level, opts)
				local new_opts = opts or {}
				new_opts.timeout = 3000
				return require("notify")(msg, level, new_opts)
			end
		end,
	},
}
