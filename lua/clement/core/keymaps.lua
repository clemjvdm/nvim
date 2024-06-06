vim.g.mapleader = " "

local keymap = vim.keymap

local opts = {noremap = true, silent = true}

keymap.set("i","jk","<ESC>", opts)
keymap.set("n","<leader>nt",":tabnew<CR>", opts)
keymap.set("n","<S-l>",":tabnext<CR>", opts)
keymap.set("n","<S-h>",":tabprevious<CR>", opts)
keymap.set("n","<leader>d",":bd<CR>", opts)
keymap.set("n","<leader>D", ":bd!<CR>", opts)

-- move in normal mode
--[[keymap.set("n","j", "h", opts)
keymap.set("n","k", "j", opts)
keymap.set("n","l", "k", opts)
keymap.set("n",";", "l", opts)

keymap.set("n","j", "h", opts)
keymap.set("n","k", "j", opts)
keymap.set("n","l", "k", opts)
keymap.set("n",";", "l", opts)

-- move when in insert mdoe
keymap.set("i","<C-j>", "<Left>", opts)
keymap.set("i","<C-k>", "<Down>", opts)
keymap.set("i","<C-l>", "<Up>", opts)
keymap.set("i","<C-;>", "<Right>", opts)

-- move in visual mode
keymap.set("v","j", "h", opts)
keymap.set("v","k", "j", opts)
keymap.set("v","l", "k", opts)
keymap.set("v",";", "l", opts)]]--

-- terminal
-- configured in toggleterm plugin file

--lazygit
-- TODO: Create new lazygit terminal with toggleterm

-- no highlight
keymap.set("n","<leader>nn", ":noh<CR>", opts)

-- Remap window switching to Ctrl-hjkl
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- trouble.nvim
vim.keymap.set("n", "<leader>tr", function()
    require("trouble").toggle()
--    require("todo-comments")
--    vim.cmd('TodoTrouble')

end)


