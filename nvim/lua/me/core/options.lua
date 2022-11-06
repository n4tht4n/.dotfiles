local o = vim.opt     -- just to type less 😉

-- files, swaps & backups
o.backup = false
o.swapfile = false
o.fileencoding = 'utf-8'

-- undo/redo
o.undofile = true
o.undolevels = 1000
o.undoreload = 1000

-- line numbers
o.number = true
o.relativenumber = true

-- tabs & indentation
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

o.expandtab = true
o.smarttab = true
o.smartindent = true
o.autoindent = true

-- line wrapping
o.wrap = false

-- search settings
o.hlsearch = true                   -- highlight search results
o.incsearch = true                  -- incremental searching
o.ignorecase = true
o.smartcase = true

-- line/col highlights
o.cursorline = true                 -- highlight current line
o.colorcolumn = '120'               -- highlight this column with a vertical line

-- appearance
o.termguicolors = true
o.background = 'dark'
o.signcolumn = 'yes'                -- show fixed sign column in the gutter

-- clipboard
o.clipboard:append('unnamedplus')   -- also use system clipboard!

-- split windows
o.splitright = true                 -- split vertically to the right
o.splitbelow = true                 -- split horizontally below

-- misc
o.scrolloff = 10                    -- number of lines to keep above/below cursor when scrolling up/down
o.backspace = 'indent,eol,start'    -- fix backspace behavior... somehow 😉
o.updatetime = 50                   -- faster reaction
o.iskeyword:append('-')             -- with this, hyphenated words are treated as one single word (e.g. for `dw`)

