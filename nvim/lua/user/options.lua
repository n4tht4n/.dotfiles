-- vim: foldmarker={,} foldlevel=0 foldmethod=marker

-- Files, Swap & Backup {
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.fileencoding = "utf-8"
-- }

-- Undo/Redo stuff {
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.undoreload = 10000
-- }

-- Text, Tab, and Indent related stuff {
vim.opt.number = true               -- show line numbers
vim.opt.relativenumber = true       -- ...but make 'em relative to the current one 😉 

vim.opt.autoindent = true
vim.opt.expandtab = true            -- spaces instead of tabs
vim.opt.smarttab = true             -- try to be smart when hitting the tab key...
vim.opt.smartindent = true
vim.opt.tabstop = 2                 -- show existing tabs as 2 spaces!?
vim.opt.softtabstop = 2             -- ??
vim.opt.shiftwidth = 2              -- use 2 spaces when indenting

vim.opt.wrap = false                -- no wrapping

vim.opt.cursorline = true           -- hightlight current line
vim.opt.colorcolumn = "120"         -- vertical ruler line at this column
vim.opt.scrolloff = 10              -- minimal number of lines above/below cursor when scrolling top/bottom

vim.opt.updatetime = 50             -- faster reaction time
vim.opt.signcolumn = 'yes'          -- show sign column in the gutter
-- }

-- Searching {
vim.opt.hlsearch = true             -- highlight search results
vim.opt.incsearch = true            -- incremental searching
vim.opt.ignorecase = true           -- ignore case while searching...
vim.opt.smartcase = true            -- hovever, try to be smart about cases while searching
-- }

-- Theme {
vim.opt.termguicolors = true
vim.cmd('colorscheme dracula')
-- }

