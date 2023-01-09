-- require('rose-pine').setup({ dark_variant = "moon" })
-- set colorscheme after options

-- Lua
-- vim.cmd('colorscheme poimandres')
--
-- vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
-- vim.api.nvim_set_hl(0, '@text.note', {fg = "#ffffff" , bg = "#b00b69"})
--


-- #region
-- function ColorMyTheme(color)
-- 	-- color = color or "rose-pine"
--     color = color or "poimandres"
-- 	-- color = color or "oxocarbon"
--     -- vim.opt.background = "dark" -- set this to dark or light
--     --
--     -- TODO : disable bold font
--     -- vim.cmd.highlight {"def link @function @function.builtin", bang = true}
--
--     vim.cmd.colorscheme(color)
--
--     -- NOTE 
-- 	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
-- 	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    -- vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
--     -- 
--     -- vim.opt.linespace = 10
--
-- end
-- ColorMyTheme()
--
-- -- vim.set.linespace(3)
--
-- BUG 

-- -------------------------
local success, solarized = pcall(require, 'solarized')

if not success then
  return
end

-- local default_config = {
--   mode = 'dark', -- dark(default)/light
--   theme = 'neovim', -- vim(default)/neovim/vscode
--   transparent = true, -- false(default)/true
-- }

-- solarized.setup(default_config)


solarized.setup {
  transparent = true,
  theme = 'neovim',
  mode = 'dark',
  colors = function (c)
    local colors = {
      fg = c.cyan, -- override the default foreground color
      indigo = '#4B0082', -- new color
      bg_alt = "none",
    }

    return colors
  end,
  highlights = function(colors)
    local highlights = {
      CmpItemKindTabnine = { fg = colors.magenta },
      CmpItemKindEmoji = { fg = colors.yellow },
      LineNr = { bg = solarized:is_transparent(colors.bg_alt) }, -- bg_alt if solarized is not transparent
      CursorLineNr = { fg = colors.indigo }, -- new color being used
    }

    return highlights
  end,
}
-- TODO 
-- NOTE 

vim.cmd 'colorscheme solarized'
vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
vim.api.nvim_set_hl(0, '@text.note', { link = 'Todo' })
-- vim.api.nvim_set_hl(0, '@text.note', {fg = "#ffffff" , bg = "#b00b69"})
--
