vim.g.mapleader = " "

local keymap = vim.keymap

local opts = {noremap = true, silent = true}

keymap.set("i","jk","<ESC>", opts)
keymap.set("n","<leader>nt",":tabnew<CR>", opts)
keymap.set("n","<S-l>",":tabnext<CR>", opts)
keymap.set("n","<S-h>",":tabprevious<CR>", opts)
keymap.set("n","<leader>w",":w<CR>", opts)
keymap.set("n","<leader>q",":bd<CR>", opts)
keymap.set("n","<leader>Q", ":bd!<CR>", opts)

-- move when in insert mdoe
keymap.set("i","<C-h>", "<Left>", opts)
keymap.set("i","<C-j>", "<Down>", opts)
keymap.set("i","<C-k>", "<Up>", opts)
keymap.set("i","<C-l>", "<Right>", opts)

-- terminal
keymap.set("n", "<leader>t", ":term<CR>", opts)
keymap.set('t', '<Esc>', [[<C-\><C-n>]])

-- no highlight
keymap.set("n","<leader>nn", ":noh<CR>", opts)

-- Remap window switching to Ctrl-hjkl
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })



