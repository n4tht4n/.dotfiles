local status, tree = pcall(require, 'nvim-tree')
if not status then
  print("Couldn't load 'nvim-tree' plugin!")
  return
end

-- The following block is taken from the `nvim-tree` setup!
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

tree.setup({
  actions = {
    open_file = {
      window_picker = {
        enable = false,
      },
    },
  },
  sort_by = 'case-sensitive',
  filters = {
    custom = { "^.git$" }
  },
  view = {
    width = 42,
    side = "right"
  },
  renderer = {
    highlight_opened_files = "all"
  }
})
