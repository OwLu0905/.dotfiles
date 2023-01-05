-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- search 
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',	  
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Colorscheme 
  --
  -- use({
	 --  'rose-pine/neovim',
	 --  as = 'rose-pine',
	 --  config = function()
		--   vim.cmd('colorscheme rose-pine')
	 --  end
  -- })


  use {'nyoom-engineering/oxocarbon.nvim'}

  -- use {
  --     'olivercederborg/poimandres.nvim',
  --     config = function()
  --         require('poimandres').setup {
  --             -- leave this setup function empty for default config
  --             -- or refer to the configuration section
  --             -- for configuration options
  --         }
  --     end
  -- }


  -- Comment
  use {
	  'numToStr/Comment.nvim',
	  config = function()
		  require('Comment').setup()
	  end
  }

  -- -- highlight 
  -- -- -- Lua
  -- use {
  --     "folke/todo-comments.nvim",
  --     requires = "nvim-lua/plenary.nvim",
  --     config = function()
  --         require("todo-comments").setup {
  --             -- your configuration comes here
  --             -- or leave it empty to use the default settings
  --             -- refer to the configuration section below
  --         }
  --     end
  -- }

  -- text highlight
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  -- save file path
  use('theprimeagen/harpoon')

  -- Git
  use('tpope/vim-fugitive')

  -- LSP
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
 		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  -- 底下顯示的樣式
  use {
	  'nvim-lualine/lualine.nvim',
	  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }


  -- act like vscode 
  use {
	  'nvim-tree/nvim-tree.lua',
	  requires = {
		  'nvim-tree/nvim-web-devicons', -- optional, for file icons
	  },
	  tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
end)

