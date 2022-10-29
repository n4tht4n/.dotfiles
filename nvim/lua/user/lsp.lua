-- create lspkind for nicer completion menu icons 😎
local lspkind = require('lspkind')
lspkind.init()

-- setup completion stuff via lsp-zero
local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.ensure_installed {
  -- list of available languages: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
  -- and for more language info: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  'sumneko_lua', 'tsserver'
}
lsp.setup_nvim_cmp {
  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = '[buf]',
        nvim_lsp = '[LSP]',
        nvim_lua = '[api]',
        path = '[path]',
        luasnip = '[snip]',
      },
    },
  }
}
lsp.setup()

-- give some nicer "icons" for Mason...
require('mason').setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    }
  }
}
