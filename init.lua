vim.g.mapleader = " "
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.wo.number = true
vim.cmd.set("relativenumber")
vim.cmd.set("noswapfile")
vim.opt.clipboard = "unnamedplus"
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true
vim.opt.termguicolors = true

vim.keymap.set("n", "<C-h>", "<cmd>bprevious<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", "<cmd>bnext<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bd", "<cmd>bnext<CR>:bd#<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bp", "<cmd>BufferLineTogglePin<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>w", "<cmd>wall<CR>", { noremap = true, silent = true })
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>/", "<cmd>nohlsearch<CR>")

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
