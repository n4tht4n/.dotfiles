local status, nullls = pcall(require, 'null-ls')
if not status then
  print("Couldn't load 'null-ls' plugin!")
  return
end

local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

-- Builtin sources: https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
--
-- I use `null-ls` just for formatting... If possible, formatters are installed using `Mason`.
-- Linters and all the other stuff are used directly via LSP...

nullls.setup({
  sources = {
    nullls.builtins.formatting.prettierd,
    nullls.builtins.diagnostics.markdownlint,
  },
  on_attach = function(client, bufnr)
    if client.supports_method('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr})
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            filter = function(c)
              -- only use null-ls for formatting, no other lsp server...
              return c.name == 'null-ls'
            end,
            bufnr = bufnr })
        end,
      })
    end
  end,
})
