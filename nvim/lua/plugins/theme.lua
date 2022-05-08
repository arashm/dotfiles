vim.cmd([[
color dogrun
colorscheme dogrun
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi SpellBad cterm=underline,Bold
hi link SpellCap SpellBad
hi link SpellRare SpellBad

" Make those debugger statements painfully obvious
au BufEnter,BufWritePost *.rb syn match error contained "\<binding.pry\>"
au BufEnter,BufWritePost *.rb syn match error contained "\<debugger\>"
]])
