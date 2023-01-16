local options = { noremap = true }
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<ESC>", options)
vim.keymap.set("i", "kj", "<ESC>", options)

-- NOTE : 在v mode中，大寫JK可以移動整行
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever :) thx primeagen (paste 後不會清掉原本的buffer)
vim.keymap.set("x", "<leader>p", "\"_dP")

-- NOTE : nvim_tree
vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<cr>")

-- NOTE : nvim_tree for HHKB keybind
vim.keymap.set("n", "<leader>H", "<C-w>h", options)
vim.keymap.set("n", "<leader>L", "<C-w>l", options)
-- vertical
vim.keymap.set("n", "<leader-j>", "<C-w>j", options)
vim.keymap.set("n", "<leader-k>", "<C-w>k", options)
-- vim.keymap.set("n", "<C-k>", "<C-w>k", options)


-- NOTE : tab setter 
vim.o.tabstop = 4 -- size of a hard tabstop (ts).
vim.o.shiftwidth = 4 -- size of an indentation (sw).
vim.o.expandtab = true -- always uses spaces instead of tab characters (et).
vim.o.softtabstop = 4 -- number of spaces a <Tab> counts for. When 0, feature is off (sts).
--
-- NOTE :  nvim_tree toggle file pos in the tree
vim.keymap.set('n', '<leader>fp<cr>', "<cmd>NvimTreeFindFile<cr>")


-- NOTE : packer sync 
-- :PackerSync to :PS
 vim.cmd([[
    cnoreabbrev PS PackerSync 
]])
