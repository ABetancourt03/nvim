require("core.plugin_config.tokyonight")

require("catppuccin").setup({
	flavour = "mocha",
	transparent_background = true,
	styles = {
		comments = { "italic" },
	},
})

vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd([[colorscheme synthweave-transparent]])
