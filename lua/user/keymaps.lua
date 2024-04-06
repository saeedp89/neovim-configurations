local opts={noremap = true, silent = true}
local term_opts={silent = true}


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("","<Space>","<Nop>", opts)
vim.g.mapleader = "'"
vim.g.maplocalleader = "'"

-- Modes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode="t"
-- command_mode = "c"
--
-- Normal --
-- Better window Navigation
keymap("n","<C-h>","<C-w>h", opts)
keymap("n", "<C-j>","<C-w>j", opts)
keymap("n", "<C-k>","<C-w>k", opts)
keymap("n", "<C-l>","<C-w>l", opts)
keymap("n", "<A-j>",":m .+1<CR>==",opts)
keymap("n", "<A-k>",":m .-2<CR>==",opts)
keymap("n", "<space>d","yyp", opts)

keymap("n", "<leader>e",":Lex 20<cr>", opts)

keymap("i", "jk","<Esc>", opts) 
keymap("n", "<S-l>", ":nohlsearch<CR>",opts)

-- Resize with arrows
keymap("n","<C-Up>", ":resize +2<CR>", opts)
keymap("n","<C-Down>", ":resize -2<CR>", opts)
keymap("n","<C-Left>", ":vertical resize +2<CR>", opts)
keymap("n","<C-Right>", ":vertical resize -2<CR>", opts)
keymap("n","<",":sp<CR>",opts)
keymap("n",">",":vsp<CR>",opts)
--keymap("n","<s-s>s",":vsp<CR>", opts)

-- Visual
-- Stay in indent mode
keymap("v","<","<gv", opts)
keymap("v",">",">gv", opts)

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x","K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
