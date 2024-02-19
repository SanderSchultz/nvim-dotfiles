function ColorMyPencils(color)

    -- require("nvim-tree").setup()
    --
    require("nvim-web-devicons").setup()

    -- local custom_everforest = require('lualine.themes.everforest')
    -- local custom_gruvbox = require('lualine.themes.gruvbox')
    local custom_nordic = 'nordic'

    require('lualine').setup {
      -- options = { theme  = custom_everforest },
      -- options = { theme  = custom_gruvbox },
      options = { theme  = custom_nordic },
    }

    --Sets theme
	-- color = color or "rose-pine"
    -- color = color or "catppuccin"
    -- color = color or "kanagawa"
    -- color = color or "seoul256"
    -- color = color or "everforest"
    color = color or "nordic"
    -- color = color or "tokyonight"
    -- color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

ColorMyPencils()
