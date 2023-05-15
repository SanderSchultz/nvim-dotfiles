-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'github/copilot.vim'

  use {
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      config = function()
        require("trouble").setup {}
      end
    }

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    --Themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use {"rebelot/kanagawa.nvim", as = "kanagawa"}
    use {"junegunn/seoul256.vim", as = "seoul256"}
    use {"sainnhe/everforest", as = "everforest"}
    use {"folke/tokyonight.nvim", as = "tokyonight"}

    --Treesitter
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    --Smooth scrolling
    use('psliwka/vim-smoothie')

    --Line bottom
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    --File explorer
    --[[ use {'nvim-tree/nvim-tree.lua'}
    use {'nvim-tree/nvim-web-devicons'} ]]

    --Harpoon
	use('ThePrimeagen/harpoon')

    --Undotree
	use('mbbill/undotree')

    --Git stuff
	use('tpope/vim-fugitive')

    --Statusline
	use('b3nj5m1n/kommentary')

    --Commenting out stuff
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
        }

    --LSP
	use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v2.x',
	  requires = {
	    -- LSP Support
	    {'neovim/nvim-lspconfig'},             -- Required
	    {                                      -- Optional
	      'williamboman/mason.nvim',
	      run = function()
		pcall(vim.cmd, 'MasonUpdate')
	      end,
	    },
	    {'williamboman/mason-lspconfig.nvim'}, -- Optional

	    -- Autocompletion
	    {'hrsh7th/nvim-cmp'},     -- Required
	    {'hrsh7th/cmp-nvim-lsp'}, -- Required
	    {'L3MON4D3/LuaSnip'},     -- Required
	  }
	}
end)
