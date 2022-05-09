local h = require("helpers")
local nnoremap = h.nnoremap

nnoremap("<leader>gs", ":Git status<CR>")
nnoremap("<leader>gc", ":Git commit<CR>")
nnoremap("<leader>gb", ":Git blame<CR>")
nnoremap("<leader>gl", ":Git log<CR>")
nnoremap("<leader>gr", ":Git read<CR>")
nnoremap("<leader>gw", ":Git write<CR>")
nnoremap("<leader>ge", ":Git edit<CR>")
-- Mnemonic _i_nteractive
nnoremap("<leader>gi", ":Git add -p %<CR>")
