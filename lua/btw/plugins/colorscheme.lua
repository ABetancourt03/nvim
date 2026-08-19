return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		lazy = true,
		opts = {
			flavour = "mocha",
			transparent_background = true,
			float = {
				transparent = true,
			},
		},
	},
	{
		"bjarneo/vantablack.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("vantablack").setup({
				transparent = true,
				styles = {
					comments = { italic = true },
					keywords = { italic = true },
					functions = {},
					variables = {},
					sidebars = "dark",
					floats = "dark",
				},
				dim_inactive = false,
			})
		end,
	},
	{
		"rithikasilva/sequoia-monochrome.nvim",
	},
	{
		"morhetz/gruvbox",
	},
	{
		"kdheepak/monochrome.nvim",
	},
	{ "akinsho/horizon.nvim", version = "*" },
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"shaunsingh/nord.nvim",
	},
}
