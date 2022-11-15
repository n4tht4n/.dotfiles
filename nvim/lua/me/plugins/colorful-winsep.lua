local status, winsep = pcall(require, 'colorful-winsep')
if not status then
  print("Couldn't load 'colorful-winsep' plugin!")
  return
end

winsep.setup({})
