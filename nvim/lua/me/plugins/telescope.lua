local status, telescope = pcall(require, 'telescope')
if not status then
  print("Couldn't load 'telescope' plugin!")
  return
end

local actions_setup, actions = pcall(require, 'telescope.actions')
if not actions_setup then
  print("Couldn't load 'telescope.actions'!")
  return
end

telescope.setup({
  defaults = {
    mappings = {
      i = {
        ['<C-k>'] = actions.move_selection_previous,                        -- move to previous result
        ['<C-j>'] = actions.move_selection_next,                            -- move to next result
        ['<C-q>'] = actions.send_selected_to_qflist + actions.open_qflist,  -- send selected to quickfixlist
      },
    },
  },
})
