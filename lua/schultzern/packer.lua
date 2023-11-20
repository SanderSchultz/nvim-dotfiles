-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  --Do :Test to run tests
  use 'vim-test/vim-test'

    use('christoomey/vim-tmux-navigator')

    --Fuzzy finder for files in project
    use {
      'nvim-telescope/telescope.nvim',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    --Themes
    use {"AlexvZyl/nordic.nvim", as = "nordic"}
    use {"catppuccin/nvim", as = "catppuccin" }
    use {"rebelot/kanagawa.nvim", as = "kanagawa"}
    use {"junegunn/seoul256.vim", as = "seoul256"}
    use {"sainnhe/everforest", as = "everforest"}
    use {"folke/tokyonight.nvim", as = "tokyonight"}
    use {"morhetz/gruvbox", as = "gruvbox"}

    --Treesitter - color highlighting for code
	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/playground')

    --Smooth scrolling
    use('psliwka/vim-smoothie')

    --Description Line bottom
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    --File explorer nvim-tree
    use {'nvim-tree/nvim-tree.lua'}
    use {'nvim-tree/nvim-web-devicons'}

    --Harpoon - quick file navigation
	use('ThePrimeagen/harpoon')

    --Undotree - undo history
	use('mbbill/undotree')

    --Git stuff
	use('tpope/vim-fugitive')

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
