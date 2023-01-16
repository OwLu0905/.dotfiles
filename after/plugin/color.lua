-- require('rose-pine').setup({ dark_variant = "moon" })
-- set colorscheme after options

-- Lua
-- vim.cmd('colorscheme poimandres')
--
-- vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
-- vim.api.nvim_set_hl(0, '@text.note', {fg = "#ffffff" , bg = "#b00b69"})
--


-- #region
function ColorMyTheme(color)
	-- color = color or "rose-pine"
    color = color or "poimandres"
	-- color = color or "oxocarbon"
    -- TODO : disable bold font
    -- vim.cmd.highlight {"def link @function @function.builtin", bang = true}

    vim.cmd.colorscheme(color)

    -- NOTE 
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
    vim.api.nvim_set_hl(0, '@text.note', {fg = "#ffffff" , bg = "#b00b69"})
    -- 
    -- vim.opt.linespace = 10
end
-- ColorMyTheme()

-- -------------------------


function CallSolarized()

    local success, solarized = pcall(require, 'solarized')

    if not success then
        return
    end
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

    vim.cmd 'colorscheme solarized'
end

vim.api.nvim_set_hl(0, '@text.todo', { link = 'Todo' })
-- vim.api.nvim_set_hl(0, '@text.note', { link = 'Todo' })
vim.api.nvim_set_hl(0, '@text.note', {fg = "#ffffff" , bg = "#b00b69"})




require('nightfox').setup({
  options = {
    -- Compiled file's destination location
    compile_path = vim.fn.stdpath("cache") .. "/nightfox",
    compile_file_suffix = "_compiled", -- Compiled file suffix
    transparent = true,    -- Disable setting background
    terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
    dim_inactive = false,   -- Non focused panes set to alternative background
    module_default = true,  -- Default enable value for modules
    -- styles = {              -- Style to be applied to different syntax groups
    --   comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
    --   conditionals = "NONE",
    --   constants = "NONE",
    --   functions = "NONE",
    --   keywords = "NONE",
    --   numbers = "NONE",
    --   operators = "NONE",
    --   strings = "NONE",
    --   types = "NONE",
    --   variables = "NONE",
    -- },
    inverse = {             -- Inverse highlight for different types
      match_paren = false,
      visual = false,
      search = false,
    },
    modules = {             -- List of various plugins and additional options
      -- ...
    },
  },
  palettes = {},
  specs = {},
  groups = {},
})

-- CallSolarized()
-- setup must be called before loading
vim.cmd("colorscheme nightfox")
-- vim.cmd("colorscheme dawnfox")
-- vim.cmd("colorscheme nordfox")
