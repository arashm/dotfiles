vim.cmd([[
color tokyonight-moon
colorscheme tokyonight-moon
set termguicolors
set nospell

" Make those debugger statements painfully obvious
au BufEnter,BufWritePost *.rb syn match error contained "\<binding.pry\>"
au BufEnter,BufWritePost *.rb syn match error contained "\<binding.break\>"
au BufEnter,BufWritePost *.rb syn match error contained "\<debugger\>"
au BufEnter,BufWritePost *.rb syn match error contained "\<binding.b\>"
]])
