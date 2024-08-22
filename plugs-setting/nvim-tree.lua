-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- optionally enable 24-bit colour
vim.opt.termguicolors = true


-- OR setup with some options
require("nvim-tree").setup({
  update_cwd = true,
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    highlight_opened_files = "name",
  },
  filters = {
    dotfiles = false,
  },
  git = {
    ignore = false,
  },
})
