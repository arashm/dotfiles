local set = vim.opt
local g = vim.g
local wo = vim.wo

set.shell = "/bin/sh"
set.background = "dark"
set.smartindent = true
set.number = true -- Show line numbers
set.relativenumber = true -- Show line numbers in relative order
set.clipboard = "unnamedplus" -- Use clipboard as register
set.mouse = "a" -- Automatically enable mouse usage
set.mousehide = true -- Hide the mouse cursor while typing
set.history = 1000 -- Store a ton of history (default is 20)
set.spell = true -- Spell checking on
set.hidden = true -- Allow buffer switching without saving
set.backup = true -- Backups are nice
set.undofile = true -- So is persistent undo
set.undolevels = 1000 -- Maximum number of changes that can be undone
set.undoreload = 10000 -- Maximum number lines to save for undo on a buffer reload
set.showmode = true -- Display the current mode
set.cursorline = true -- Highlight current line
set.backspace = "indent,eol,start" -- Backspace for dummies
set.showmatch = true -- Show matching brackets/parenthesis
set.incsearch = true -- Find as you type search
set.hlsearch = true -- Highlight search terms
set.ignorecase = true -- Case insensitive search
set.smartcase = true -- Case sensitive when uc present
set.scrolloff = 3 -- Minimum lines to keep above and below cursor
set.list = true -- So the next line works
set.listchars = { tab = "▸ ", trail = "•", extends = "#", nbsp = "." } -- Highlight problematic whitespace
set.wrap = false -- Do not wrap long lines
set.autoindent = true -- Indent at the same level of the previous line
set.expandtab = true -- Tabs are spaces, not tabs
set.joinspaces = false -- Prevents inserting two spaces after punctuation on a join (J)
set.splitright = true -- Puts new vsplit windows to the right of the current
set.splitbelow = true -- Puts new split windows to the bottom of the current
set.textwidth = 0 -- Do wrap long lines after paste
-- set.colorcolumn = "80" -- Make it obvious where 80 characters is
set.laststatus = 2 -- Always show status line
set.autochdir = false
set.showtabline = 2 -- Always show the Tabline
set.re = 1 -- Fix syntax highlighting of Ruby RegEx
set.termguicolors = true -- enable 24bit true color
set.updatetime = 300
-- set.tabstop = 2
-- set.shiftwidth = 0
wo.signcolumn = "yes"
g.loaded_python_provider = 0
g.loaded_perl_provider = 0
g.indent_guides_auto_colors = 0
g.buftabline_indicators = 1
set.shortmess:append("filmnrxoOtT")

vim.cmd([[
  syntax on
  filetype plugin indent on
]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "eruby.yaml",
  command = "set filetype=yaml",
})
