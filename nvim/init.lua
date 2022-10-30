require("user.plugins")

require("user.options")
require("user.keymaps")

-- plugins
require("user.lualine")
require('user.treesitter')
require('user.lsp')
require('user.null_ls')

require('nvim-autopairs').setup {}    -- no special setup for the time being...
require('Comment').setup {}           -- no special setup for the time being...
require('nvim-surround').setup {}     -- no special setup for the time being...

