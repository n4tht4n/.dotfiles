local status, comment = pcall(require, 'Comment')
if not status then
  print("Couldn't load 'Comment' plugin!")
  return
end

comment.setup({})
