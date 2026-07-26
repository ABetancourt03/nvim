return {
	"jiriks74/presence.nvim",
	event = "UIEnter",
	config = function()
		require("presence").setup({
			auto_update = true,
			neovim_image_text = "The best text editor ever created",
			main_image = "neovim",
			client_id = "1172122807501594644",
			log_level = nil,
			debounce_timeout = 10,
			enable_line_number = false,
			blacklist = {},
			buttons = true,
			file_assets = {},
			show_time = true,
			editing_text = "Editing %s",
			file_explorer_text = "Browsing %s",
			git_commit_text = "Committing changes",
			plugin_manager_text = "Managing plugins",
			eading_text = "Reading %s",
			workspace_text = "Working on %s",
			line_number_text = "Line %s out of %s",
		})
	end,
}
