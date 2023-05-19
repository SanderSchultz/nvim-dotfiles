function ColorMyPencils(color)

    require("nvim-tree").setup()
    require("nvim-web-devicons").setup()

    local custom_everforest = require('lualine.themes.everforest')

    require('lualine').setup {
      options = { theme  = custom_everforest },
    }

    --Sets theme
	-- color = color or "rose-pine"
    -- color = color or "catppuccin"
    -- color = color or "kanagawa"
    -- color = color or "seoul256"
    color = color or "everforest"
    -- color = color or "tokyonight"
    -- color = color or "gruvbox"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
