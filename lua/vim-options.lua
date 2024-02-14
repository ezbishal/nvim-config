vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.wo.number = true
vim.g.mapleader = " "
vim.opt.clipboard:append("unnamedplus")

-- Panes
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
--

-- Buffers
vim.keymap.set("n", "H", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "L", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bnext<CR>:bd#<CR>", { noremap = true, silent = true })
--

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "jj", "<C-o>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")
vim.keymap.set({"n","v"}, "J", "5j", { noremap = true, silent = true })
vim.keymap.set({"n","v"}, "K", "5k", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>j", "J", { noremap = true, silent = true })
