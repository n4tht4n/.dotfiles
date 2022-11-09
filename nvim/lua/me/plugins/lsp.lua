-- create lspkind for nicer completion menu icons 😎
local lspkind_status, lspkind = pcall(require, 'lspkind')
if lspkind_status then
  lspkind.init()
else
  print("Couldn't load 'lspkind' plugin for nicer auto-completion icons... ignoring for now!")
end

-- setup completion stuff via lsp-zero
local status, lsp = pcall(require, 'lsp-zero')
if not status then
  print("Couldn't load 'lsp-zero' plugin!")
  return
end

lsp.preset('recommended')
lsp.nvim_workspace()
lsp.ensure_installed {
  -- list of available languages: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
  -- and for more language info: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
  'sumneko_lua', 'tsserver', 'eslint', 'marksman'
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

-- use some nicer "icons" and rounded border with Mason...
require('mason').setup {
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗"
    },
    border = "rounded"
  }
}
