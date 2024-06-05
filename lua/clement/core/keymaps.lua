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

keymap.set("n","j", "h", opts)
keymap.set("n","k", "j", opts)
keymap.set("n","l", "k", opts)
keymap.set("n",";", "l", opts)

-- move when in insert mdoe
keymap.set("i","<C-j>", "<Left>", opts)
keymap.set("i","<C-k>", "<Down>", opts)
keymap.set("i","<C-l>", "<Up>", opts)
keymap.set("i","<C-;>", "<Right>", opts)

-- terminal
-- keymap.set("n", "<leader>t", ":ToggleTerm<CR> <BAR> :setlocal nonumber<CR>i", opts)
keymap.set("n", "<leader>t", ":ToggleTerm<CR>", opts)
keymap.set('t', '<Esc>', [[<C-\><C-n>]])

--lazygit
-- keymap.set("n", "<leader>g", ":term lazygit<CR> <BAR> :setlocal nonumber<CR>i", opts)

-- no highlight
keymap.set("n","<leader>nn", ":noh<CR>", opts)

-- Remap window switching to Ctrl-hjkl
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-;>', '<C-w>l', { noremap = true })

-- trouble.nvim
vim.keymap.set("n", "<leader>tr", function()
    require("trouble").toggle()
--    require("todo-comments")
--    vim.cmd('TodoTrouble')

end)


