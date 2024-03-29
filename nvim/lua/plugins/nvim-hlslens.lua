require("hlslens").setup()
local nnoremap = require("helpers").nnoremap

nnoremap("n", [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]])
nnoremap("N", [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]])

nnoremap("*", [[*<Cmd>lua require('hlslens').start()<CR>]])
nnoremap("#", [[#<Cmd>lua require('hlslens').start()<CR>]])
nnoremap("g*", [[g*<Cmd>lua require('hlslens').start()<CR>]])
nnoremap("g#", [[g#<Cmd>lua require('hlslens').start()<CR>]])
nnoremap("<Leader>h", ":noh<CR>")
