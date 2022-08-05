local h = require("helpers")
local nnoremap = h.nnoremap
local inoremap = h.inoremap

-- COC will install these extensions if they are missing.
-- These are the extensions that I want on every machine I have by default.
vim.g.coc_global_extensions = {
  "coc-lists",
  "coc-css",
  "coc-json",
  "coc-html",
  "coc-yaml",
  "coc-snippets",
  "coc-tsserver",
  "coc-solargraph",
}

nnoremap("gd", "<Plug>(coc-definition)")
nnoremap("gy", "<Plug>(coc-type-definition)")
nnoremap("gi", "<Plug>(coc-implementation)")
nnoremap("gr", "<Plug>(coc-references)")

vim.cmd([[
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])
