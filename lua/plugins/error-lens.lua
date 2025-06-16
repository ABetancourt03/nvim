return {
	"chikko80/error-lens.nvim",
	event = "BufRead",
	dependencies = {
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		enabled = true,
		auto_adjust = {
			enable = false,
		},
	},
}
