local vim = vim

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("i", "<leader>ew", "<Esc>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<S-Left>", ":vertical resize +3<CR>")
vim.keymap.set("n", "<S-Right>", ":vertical resize -3<CR>")
vim.keymap.set("n", "<S-Up>", ":resize +3<CR>")
vim.keymap.set("n", "<S-Down>", ":resize -3<CR>")

vim.keymap.set("n", "<leader>sv", "<C-w>v")
vim.keymap.set("n", "<leader>sh", "<C-w>s")
vim.keymap.set("n", "<leader>sx", ":close<CR>")
vim.keymap.set("n", "<leader>gbl", ":GitBlameLineToggle<CR>")
vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")

vim.keymap.set("v", "<leader>p", "_dP")
vim.keymap.set("v", "<leader>c", "\"*y")
vim.keymap.set("v", "<leader>y", "\"_y")
