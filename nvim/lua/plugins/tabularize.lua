local h = require("helpers")
local nnoremap = h.nnoremap
local vnoremap = h.vnoremap

nnoremap("<Leader>a&", ":Tabularize /&<CR>")
vnoremap("<Leader>a&", ":Tabularize /&<CR>")
nnoremap("<Leader>a=", ":Tabularize /^[^=]*\\zs=<CR>")
vnoremap("<Leader>a=", ":Tabularize /^[^=]*\\zs=<CR>")
nnoremap("<Leader>a=>", ":Tabularize /=><CR>")
vnoremap("<Leader>a=>", ":Tabularize /=><CR>")
nnoremap("<Leader>a:", ":Tabularize /:<CR>")
vnoremap("<Leader>a:", ":Tabularize /:<CR>")
nnoremap("<Leader>a,", ":Tabularize /,<CR>")
vnoremap("<Leader>a,", ":Tabularize /,<CR>")
nnoremap("<Leader>a,,", ":Tabularize /,\zs<CR>")
vnoremap("<Leader>a,,", ":Tabularize /,\zs<CR>")
nnoremap("<Leader>a<Bar>", ":Tabularize /<Bar><CR>")
vnoremap("<Leader>a<Bar>", ":Tabularize /<Bar><CR>")
nnoremap("<Leader>a::", ":Tabularize /\\w:\\zs/l0l1<CR>")
vnoremap("<Leader>a::", ":Tabularize /\\w:\\zs/l0l1<CR>")
