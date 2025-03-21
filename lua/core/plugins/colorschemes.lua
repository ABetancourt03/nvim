return {
	-- "morhetz/gruvbox",
	"ellisonleao/gruvbox.nvim",
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.gruvbox_material_enable_italic = true
		end,
	},
	"dracula/vim",
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{ "olimorris/onedarkpro.nvim", priority = 1000 },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"maxmx03/solarized.nvim",
		lazy = false,
		priority = 1000,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
	},
	"samharju/synthweave.nvim",
}
