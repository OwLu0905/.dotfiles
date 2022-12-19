local options = { noremap = true }
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("i", "jk", "<ESC>", options)
vim.keymap.set("i", "kj", "<ESC>", options)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever :) thx primeagen
vim.keymap.set("x", "<leader>p", "\"_dP")




-- vim.keymap("n", "<C-h>", "<C-w>h", options)
-- vim.keymap("n", "<C-j>", "<C-w>j", options)
-- vim.keymap("n", "<C-k>", "<C-w>k", options)
-- vim.keymap("n", "<C-l>", "<C-w>l", options)

-- NOTE : nvim_tree
vim.keymap.set('n', '<leader>e', "<cmd>NvimTreeToggle<cr>")
vim.keymap.set("n", "<C-h>", "<C-w>h", options)
-- vim.keymap.set("n", "<C-j>", "<C-w>j", options)
-- vim.keymap.set("n", "<C-k>", "<C-w>k", options)
vim.keymap.set("n", "<C-l>", "<C-w>l", options)
