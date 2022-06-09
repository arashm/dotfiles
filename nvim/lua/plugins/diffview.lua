local g = vim.g
local h = require("helpers")
local nnoremap = h.nnoremap

nnoremap("<leader>gd", ":DiffviewOpen<CR>")
nnoremap("<leader>gdf", ":DiffviewFileHistory %<CR>")
nnoremap("<leader>gdd", ":DiffviewClose<CR>")
