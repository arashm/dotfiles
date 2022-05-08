local h = require('helpers')
local nnoremap = h.nnoremap

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

nnoremap('<silent> gd', '<Plug>(coc-definition)')
nnoremap('<silent> gy', '<Plug>(coc-type-definition)')
nnoremap('<silent> gi', '<Plug>(coc-implementation)')
nnoremap('<silent> gr', '<Plug>(coc-references)')
nnoremap('<silent> K', ':call coc_show_documentation()<CR>')
