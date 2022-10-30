-- The following block is taken from the `nvim-tree` setup!
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("user.plugins")

require("user.options")
require("user.keymaps")

-- plugins
require("user.lualine")
require('user.treesitter')
require('user.nvim_tree')
require('user.lsp')
require('user.null_ls')

require('nvim-autopairs').setup {}    -- no special setup for the time being...
require('Comment').setup {}           -- no special setup for the time being...
require('nvim-surround').setup {}     -- no special setup for the time being...

