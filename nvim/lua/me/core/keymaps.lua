local keymap = vim.keymap.set             -- easier access along the lines...
local opts = { silent = true }            -- slient keymap option

------------------------------------------------------------------------------------------------------------------------
-- REMAPPING LEADER KEY
------------------------------------------------------------------------------------------------------------------------
keymap('', '<Space>', '<Nop>', opts)
vim.g.mapleader = ' '

-- hint for the different modes that could be used as 1st parameter...
--   normal mode:         'n'
--   insert mode:         'i'
--   visual mode:         'v'
--   visual block mode:   'x'
--   term mode:           't'
--   command mode:        'c'

------------------------------------------------------------------------------------------------------------------------
-- GENERAL KEYMAPPINGS
------------------------------------------------------------------------------------------------------------------------
keymap('i', 'jk', '<ESC>')                -- leave insert mode with fast `jk` typing
keymap('n', '<leader>nh', ':nohl<CR>')    -- clear search (hightlight)
keymap('n', 'x', '"_x')                   -- don't copy deletec chars (via `x`) into any register!

keymap('n', '<leader>+', '<C-a>')         -- increment number
keymap('n', '<leader>-', '<C-x>')         -- decrement number

keymap('n', '<leader>sv', '<C-w>v')       -- split window vertically
keymap('n', '<leader>sh', '<C-w>s')       -- split window horizontally
keymap('n', '<leader>se', '<C-w>=')       -- make split windows equally sized
keymap('n', '<leader>sx', ':close<CR>')   -- close current split window

keymap('n', '<leader>to', ':tabnew<CR>')  -- open new tab
keymap('n', '<leader>tx', ':tabclose<CR>')  -- close current tab
keymap('n', '<leader>tn', ':tabn<CR>')    -- go to next tab
keymap('n', '<leader>tp', ':tabp<CR>')    -- go to previous tab

------------------------------------------------------------------------------------------------------------------------
-- PLUGIN SPECIFIC KEYMAPPINGS
------------------------------------------------------------------------------------------------------------------------

-- vim-maximizer
keymap('n', '<leader>sm', ':MaximizerToggle<CR>')

-- nvim-tree
keymap('n', '<leader>e', ':NvimTreeToggle<CR>')

-- telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>')
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>')
keymap('n', '<leader>fc', '<cmd>Telescope grep_string<CR>')
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>')
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>')
