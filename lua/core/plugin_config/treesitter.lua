require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"vim",
		"vimdoc",
		"html",
		"astro",
		"javascript",
		"typescript",
		"python",
		"sql",
		"css",
		"tsx",
		"svelte",
		"yaml",
		"json",
		"xml",
		"http",
		"graphql",
	},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
