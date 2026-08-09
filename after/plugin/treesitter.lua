require('nvim-treesitter').setup {
  ensure_installed = { "lua", "help", "javascript", "typescript", "tsx", "jsdoc", "html" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
}
