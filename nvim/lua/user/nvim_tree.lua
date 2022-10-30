require('nvim-tree').setup {
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
}
