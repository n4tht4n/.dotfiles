local status, autopairs = pcall(require, 'nvim-autopairs')
if not status then
  print("Couldn't load 'autopairs' plugin!")
  return
end

autopairs.setup({
  check_ts = true,
  ts_config = {
    lua = { 'string' },                   -- don't add pairas in lua string treesitter nodes
    javascript = { 'template_string' },   -- don't add pairs in JS template strings
  }
})
