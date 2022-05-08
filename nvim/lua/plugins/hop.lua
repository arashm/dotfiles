require('hop').setup()
local h = require('helpers')
local nnoremap = h.nnoremap

nnoremap('<leader>w', '<cmd>HopWord<CR>')
nnoremap('<leader>/', '<cmd>HopPattern<CR>')
