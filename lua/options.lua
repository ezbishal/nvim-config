vim.wo.number = true
vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-h>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bnext<CR>:bd#<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":BufferLineTogglePin<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")
vim.keymap.set({"n","v"}, "J", "5j", { noremap = true, silent = true })
vim.keymap.set({"n","v"}, "K", "5k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "J", { noremap = true, silent = true })
vim.keymap.set("n", "H", "^", { noremap = true, silent = true })
vim.keymap.set("n", "L", "g_", { noremap = true, silent = true })
