return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				javascript = { "prettier", stop_after_first = true },
				typescript = { "prettier", stop_after_first = true },
				astro = { "prettier", stop_after_first = true },
				python = { "black" },
				html = { "prettier", stop_after_first = true },
				css = { "prettier", stop_after_first = true },
				json = { "prettier", stop_after_first = true },
				markdown = { "prettier", stop_after_first = true },
				yaml = { "prettier", stop_after_first = true },
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
