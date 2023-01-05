-- require('rose-pine').setup({ dark_variant = "moon" })
-- set colorscheme after options
function ColorMyTheme(color)
	-- color = color or "rose-pine"
    -- color = color or "poimandres"
	color = color or "oxocarbon"
    -- vim.opt.background = "dark" -- set this to dark or light
    -- TODO : disable bold font
    vim.cmd.highlight {"def link @function @function.builtin", bang = true}

    vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
end
ColorMyTheme()


