local status, surround = pcall(require, 'nvim-surround')
if not status then
  print("Couldn't load 'nvim-surround' plugin!")
  return
end

surround.setup({})
