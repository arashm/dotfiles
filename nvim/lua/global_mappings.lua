local h        = require('helpers')
local g        = vim.g
local noremap  = h.noremap
local nnoremap = h.nnoremap
local inoremap = h.inoremap
local tnoremap = h.tnoremap
local vnoremap = h.vnoremap

g.mapleader      = ';' -- The leader is not selected in a democratic election
g.maplocalleader = "-"

g.vue_disable_pre_processors = 1

vnoremap("<", "<gv", { desc = "Dedent current selection" })
vnoremap(">", ">gv", { desc = "Indent current selection" })
vnoremap(".", ":normal .<CR>", { desc = "using the repeat operator with a visual selection" })

nnoremap('j', 'gj', { desc = 'j will not jump past wrapped lines' })
nnoremap('k', 'gk', { desc = 'k will not jump past wrapped lines' })

nnoremap('<S-l>', '$', { desc = 'Go to the beginning of the line' })
vnoremap('<S-l>', '$', { desc = 'Go to the beginning of the line' })
nnoremap('<S-h>', '^', { desc = 'Go to the end of the line' })
vnoremap('<S-h>', '^', { desc = 'Go to the end of the line' })

noremap('<A-h>', ':bp<CR>', { desc = 'Go to previous buffer' })
noremap('<A-l>', ':bn<CR>', { desc = 'Go to next buffer' })
noremap('x', ':Bdelete<CR>', { desc = 'Close the buffer' })

noremap('<Leader>v', ':vsp<CR>', { desc = 'Open a vertical pane' })

-- Quicker window movement
nnoremap('<C-j>', '<C-w>j', { desc = 'Jump to bottom window' })
nnoremap('<C-k>', '<C-w>k', { desc = 'Jump to top window' })
nnoremap('<C-h>', '<C-w>h', { desc = 'Jump to left window' })
nnoremap('<C-l>', '<C-w>l', { desc = 'Jump to right window' })

-- Move lines up and down using ALT+j/k
nnoremap('<A-j>', ':m .+1<CR>==')
nnoremap('<A-k>', ':m .-2<CR>==')
inoremap('<A-j>', '<Esc>:m .+1<CR>==gi')
inoremap('<A-k>', '<Esc>:m .-2<CR>==gi')
vnoremap('<A-j>', ':m \'>+1<CR>gv=gv')
vnoremap('<A-k>', ':m \'<-2<CR>gv=gv')

-- Remap moving in autocomplete popup
inoremap('<expr> <TAB>', 'pumvisible() ? "\\<C-y>" : "\\<TAB>"')
inoremap('<expr> <C-j>', 'pumvisible() ? "\\<C-n>" : "\\<Down>"')
inoremap('<expr> <C-k>', 'pumvisible() ? "\\<C-p>" : "\\<Up>"')
