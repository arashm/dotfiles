local h = require("helpers")
local g = vim.g
local nnoremap = h.nnoremap

g.VtrPercentage = 25 -- height size of the tmux pane
g.VtrOrientation = "v" -- vertical pane
nnoremap("<C-f>", ":VtrFocusRunner<CR>", { desc = "Enlarge VTR window" })
nnoremap("<leader>sl", ":VtrSendLinesToRunner<cr>", { desc = "Send line to VTR" })
