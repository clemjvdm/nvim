vim.g.mapleader = " "

local keymap = vim.keymap

local opts = {noremap = true, silent = true}

keymap.set("i","jk","<ESC>", opts)
keymap.set("n","<leader>nt",":tabnew<CR>", opts)
keymap.set("n","<S-l>",":tabnext<CR>", opts)
keymap.set("n","<S-h>",":tabprevious<CR>", opts)
keymap.set("n","<leader>d",":bd<CR>", opts)
keymap.set("n","<leader>D", ":bd!<CR>", opts)

-- move when in insert mdoe
keymap.set("i","<C-h>", "<Left>", opts)
keymap.set("i","<C-j>", "<Down>", opts)
keymap.set("i","<C-k>", "<Up>", opts)
keymap.set("i","<C-l>", "<Right>", opts)

-- todo.nvim
vim.keymap.set("n", "<leader>to", ":Trouble todo<CR>", opts)

-- trouble.nvim
vim.keymap.set("n", "<leader>tr", ":Trouble<CR>", opts)

-- terminal
-- configured in toggleterm plugin file

--lazygit
-- TODO: Create new lazygit terminal with toggleterm
-- TODO: Migrate all keymaps into this file
-- TODO: Keymaps for telescope

-- no highlight
keymap.set("n","<leader>nn", ":noh<CR>", opts)

-- Remap window switching to Ctrl-hjkl
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })



