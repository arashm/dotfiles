local h = require("helpers")
local nnoremap = h.nnoremap

nnoremap("<leader>gs", ":Git status<CR>")
nnoremap("<leader>gb", ":Git blame<CR>")
nnoremap("<leader>gl", ":Git log<CR>")
