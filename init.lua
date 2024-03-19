vim.wo.number = true
vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set noswapfile")
vim.cmd("set undofile")
vim.wo.relativenumber = true
vim.opt.clipboard:append("unnamedplus")

vim.keymap.set("n", "<C-h>", ":bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", ":bnext<CR>:bd#<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", ":BufferLineTogglePin<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
vim.api.nvim_set_hl(0, 'NonText', {ctermbg = 'none'})
require("lazy").setup("plugins")
