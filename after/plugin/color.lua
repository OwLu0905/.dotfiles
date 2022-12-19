-- require('rose-pine').setup({ dark_variant = "moon" })
-- set colorscheme after options

function ColorMyTheme(color)
	color = color or "rose-pine"
	-- color = color or "poimandres"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end
ColorMyTheme()
