-- shorten function name
local keymap = vim.keymap.set
-- silent keymap option
local opts = { silent = true }

-- remap leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- hint for the different modes that could be used as 1st parameter...
--   normal mode:         "n"
--   insert mode:         "i"
--   visual mode:         "v"
--   visual block mode:   "x"
--   term mode:           "t"
--   command mode:        "c"

