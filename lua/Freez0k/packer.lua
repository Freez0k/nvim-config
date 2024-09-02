-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use("folke/tokyonight.nvim")
  use("christoomey/vim-tmux-navigator")
  use("alexmozaidze/palenight.nvim")
  use { "catppuccin/nvim", as = "catppuccin" }
  use('kessejones/git-blame-line.nvim')
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
      --- Uncomment these if you want to manage LSP servers from neovim
       {'williamboman/mason.nvim'},
       {'williamboman/mason-lspconfig.nvim'},

      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    { run= ':TSUpdate' }
  }

  use { 'folke/noice.nvim' }
  use { 'MunifTanjim/nui.nvim' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  use 'rcarriga/nvim-notify'
  use 'saadparwaiz1/cmp_luasnip'
  use "rafamadriz/friendly-snippets"
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional
    },
  }end)
