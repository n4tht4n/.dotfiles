local status, gitsigns = pcall(require, 'gitsigns')
if not status then
  print("Couldn't load 'gitsigns' plugin!")
  return
end

gitsigns.setup()
