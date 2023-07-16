local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten the function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as the leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate buffers 
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Remap Esc
keymap("i", "jj", "<ESC>", opts)
