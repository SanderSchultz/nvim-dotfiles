function ColorMyPencils(color)

    --Sets theme
	-- color = color or "rose-pine"
    -- color = color or "catppuccin"
    -- color = color or "kanagawa"
    -- color = color or "seoul256"
    color = color or "everforest"
    -- color = color or "tokyonight"
	vim.cmd.colorscheme(color)

	--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
