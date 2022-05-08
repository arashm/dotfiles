local h = require('helpers')
local nnoremap = h.nnoremap

vim.g['test#strategy'] = 'vtr'

nnoremap('<Leader>t', ':TestFile<CR>')
nnoremap('<Leader>s', ':TestNearest<CR>')
nnoremap('<Leader>a', ':TestSuite<CR>')
nnoremap('<Leader><Leader>l', ':TestLast<CR>')
