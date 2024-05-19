local h = require("helpers")
local nnoremap = h.nnoremap

vim.g.floaterm_shell = "fish"
vim.g.floaterm_keymap_new = "<F7>"
vim.g.floaterm_keymap_prev = "<F8>"
vim.g.floaterm_keymap_next = "<F9>"
vim.g.floaterm_keymap_toggle = "<F12>"
vim.g.floaterm_title = "Terminal: $1/$2"

nnoremap("<leader>G", "<cmd>FloatermNew lazygit<CR>")
