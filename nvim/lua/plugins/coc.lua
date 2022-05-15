local h = require("helpers")
local nnoremap = h.nnoremap

-- COC will install these extensions if they are missing.
-- These are the extensions that I want on every machine I have by default.
vim.g.coc_global_extensions = {
  'coc-lists',
  'coc-css',
  'coc-json',
  'coc-html',
  'coc-yaml',
  'coc-snippets',
  'coc-tsserver',
  'coc-snippets',
}

vim.cmd([[
function! s:coc_show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
]])

nnoremap("gd", "<Plug>(coc-definition)")
nnoremap("gy", "<Plug>(coc-type-definition)")
nnoremap("gi", "<Plug>(coc-implementation)")
nnoremap("gr", "<Plug>(coc-references)")
nnoremap("K", ":call coc_show_documentation()<CR>")
