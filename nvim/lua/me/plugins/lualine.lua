local status, lualine = pcall(require, 'lualine')
if not status then
  print("Couldn't load 'lualine' plugin!")
  return
end

lualine.setup({
  options = {
    globalstatus = true,
    theme = "dracula",
  },
  tabline = {
    lualine_a = {'buffers'},
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
})
