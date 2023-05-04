vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

require('plugins')
require("keys")
require('settings')
require("treesitter")
require'colorizer'.setup()
require("mason").setup()
require("nvim-tree").setup()
require("catppuccin").setup()
require("complition")

vim.g.catppucin_flavour = "macchiato" -- latte, frappe, macchiato, mocha
vim.cmd [[colorscheme catppuccin]]
vim.api.nvim_set_keymap('n', '<leader>z', '<cmd>Centerpad<cr>', { silent = true, noremap = true })
