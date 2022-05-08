local h = require('helpers')
local nnoremap = h.nnoremap

nnoremap('<silent> <leader>gs', ':Git status<CR>')
nnoremap('<silent> <leader>gc', ':Git commit<CR>')
nnoremap('<silent> <leader>gb', ':Git blame<CR>')
nnoremap('<silent> <leader>gl', ':Git log<CR>')
nnoremap('<silent> <leader>gr', ':Git read<CR>')
nnoremap('<silent> <leader>gw', ':Git write<CR>')
nnoremap('<silent> <leader>ge', ':Git edit<CR>')
-- Mnemonic _i_nteractive
nnoremap('<silent> <leader>gi', ':Git add -p %<CR>')
