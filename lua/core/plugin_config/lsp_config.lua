require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"html",
		"astro",
		"cssls",
		"cssmodules_ls",
		"tailwindcss",
		"unocss",
		"emmet_ls",
		"jsonls",
		"yamlls",
		"vuels",
		"vimls",
		"svelte",
		"pyright",
		"intelephense",
	},
})

local lspconfig = require("lspconfig")

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities =
	vim.tbl_deep_extend("force", lsp_defaults.capabilities, require("cmp_nvim_lsp").default_capabilities())

lspconfig.lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
})

lspconfig.jsonls.setup({
	settings = {
		json = {
			schemas = require("schemastore").json.schemas(),
			validate = { enable = true },
		},
	},
})

lspconfig.yamlls.setup({
	settings = {
		yaml = {
			schemaStore = {
				enable = false,
				url = "",
			},
			schemas = require("schemastore").yaml.schemas(),
		},
	},
})

lspconfig.eslint.setup({
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePost", {
			callback = function()
				vim.cmd("EslintFixAll")
			end,
		})
	end,
	capabilities = capabilities,
	settings = {
		format = { enable = false },
	},
})

local on_attach = lspconfig.util.default_config.on_attach
local capabilities = lspconfig.util.default_config.capabilities

lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	filetypes = { "python" },
})

lspconfig.intelephense.setup({})
lspconfig.ts_ls.setup({})
lspconfig.tailwindcss.setup({})
lspconfig.html.setup({})
lspconfig.astro.setup({})
lspconfig.cssls.setup({})
lspconfig.cssmodules_ls.setup({})
lspconfig.unocss.setup({})
lspconfig.emmet_ls.setup({})
lspconfig.vuels.setup({})
lspconfig.vimls.setup({})
lspconfig.svelte.setup({})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Enable completion triggered by <c-x><c-o>
		vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf }
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
		vim.keymap.set("n", "<space>D", vim.lsp.buf.type_definition, opts)
		vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
		vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, opts)
		vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
		vim.keymap.set("n", "<space>f", function()
			vim.lsp.buf.format({ async = false })
		end, opts)
		vim.api.nvim_create_augroup("AutoFormatting", {})
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = {
				"*.astro",
				"*.json",
			},
			group = "AutoFormatting",
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end,
})
