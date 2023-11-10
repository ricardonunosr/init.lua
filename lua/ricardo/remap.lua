local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Explorer
keymap("n", "<leader>e", ":Ex<cr>", opts)

-- Esc to clear search
keymap("n", "<esc>", ":nohlsearch<CR>", opts)

-- Ctrl+A
keymap("n", "<C-a>", "ggVG$", opts)
keymap("i", "<C-a>", "ggVG$", opts)

-- Comment Line
keymap("n", "<leader>/", ":CommentToggle<CR>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)

keymap('n', '<leader>o', '<CMD>lua require("telescope.builtin").find_files{ hidden = true }<CR>', opts)
keymap('n', '<leader>ol', '<CMD>lua require("telescope.builtin").live_grep()<CR>', opts)

keymap("n", '<leader>b', '<CMD>make<CR>', opts)
