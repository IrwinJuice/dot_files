-- his file can be loaded by calling `lua require('plugins')` from your init.vim
vim.cmd([[
 augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
	use("wbthomason/packer.nvim")
  -- colors
	use("norcalli/nvim-colorizer.lua")
  
  use { 'smithbm2316/centerpad.nvim' }
	-- Themes
	-- Catppuccin
	use { "catppuccin/nvim", as = "catppuccin" }
	-- rust
	use { "rust-lang/rust.vim" }
	-- tagbar
	use { "preservim/tagbar" }
	-- comment row gcc & gc
	use { "tpope/vim-commentary" }
	-- tree
	use {
	  'kyazdani42/nvim-tree.lua',
  		requires = {
    			'kyazdani42/nvim-web-devicons', -- optional, for file icons
  		},
	}
    -- sticky header
  use { "wellle/context.vim" }
  -- auto {} () []
  use { "jiangmiao/auto-pairs" }
  -- rainbow {} () []
  use { "luochen1990/rainbow" }
  -- status line
  use { "itchyny/lightline.vim" }
  -- auto save
  use { "Pocco81/auto-save.nvim" }
  -- fzf
  use { "junegunn/fzf" }
  use { "junegunn/fzf.vim" }
  -- telescope
  use {
      "nvim-telescope/telescope.nvim", tag = '0.1.0',
      requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- LSP
  use "nvim-treesitter/nvim-treesitter"
  use "neovim/nvim-lspconfig"
  use "williamboman/mason.nvim"
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
end)
