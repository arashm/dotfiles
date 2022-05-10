local g = vim.g
local h = require("helpers")
local nnoremap = h.nnoremap
local vnoremap = h.vnoremap

g.clap_layout = { relative = "editor" }
g.clap_disable_run_rooter = "v:true"

nnoremap("<c-p>", ":Clap files!<CR>")
nnoremap("<leader>'", ":Clap filer<CR>")
nnoremap("<leader><leader>'", ":Clap filer %:p:h<CR>")
nnoremap("<leader>g", ":Clap grep2<CR>")
nnoremap("<leader>b", ":Clap buffers<CR>")
nnoremap("<leader>z", ":Clap tags<CR>")
nnoremap("<leader>gg", ":Clap grep2 ++query=<cword><CR>")
vnoremap("<leader>gg", ":Clap grep2 ++query=@visual<CR>")
vnoremap("<leader>gf", ":Clap grep2 %:p:h<CR>")
