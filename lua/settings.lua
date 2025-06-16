vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set autoindent")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set termguicolors")
vim.cmd("set background=dark")

vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

vim.opt.cursorline = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.cmd("set matchpairs+=<:>")

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
