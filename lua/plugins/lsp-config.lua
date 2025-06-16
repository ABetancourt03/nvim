return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"astro",
					"cssls",
					"cssmodules_ls",
					"tailwindcss",
					"emmet_ls",
					"jsonls",
					"yamlls",
					"vuels",
					"vimls",
					"svelte",
					"pyright",
					"intelephense",
					"eslint",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.ts_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.astro.setup({})
			lspconfig.cssls.setup({})
			lspconfig.cssmodules_ls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.emmet_ls.setup({})
			lspconfig.jsonls.setup({})
			lspconfig.yamlls.setup({})
			lspconfig.vuels.setup({})
			lspconfig.vimls.setup({})
			lspconfig.svelte.setup({})
			lspconfig.pyright.setup({})
			lspconfig.intelephense.setup({})
			lspconfig.eslint.setup({})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
