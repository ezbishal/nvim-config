vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true

-- Normal Mode

vim.keymap.set("i", "kj", "<Esc>", { noremap = true })
vim.keymap.set("i", "jj", "<C-o>", { noremap = true })
vim.keymap.set("n", "J", "5j", { noremap = true })
vim.keymap.set("n", "K", "5k", { noremap = true })
vim.keymap.set("n", "<leader>j", "J", { noremap = true })

-- Visual Mode
vim.keymap.set("v", "J", "5j", { noremap = true })
vim.keymap.set("v", "K", "5k", { noremap = true })
