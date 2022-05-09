local h = require("helpers")
local g = vim.g
local nnoremap = h.nnoremap

g.VtrPercentage = 25
g.VtrOrientation = "v"
nnoremap("<C-f>", ":VtrFocusRunner<CR>", { desc = "Enlarge VTR window" })
nnoremap("<leader>sl", ":VtrSendLinesToRunner<cr>", { desc = "Send line to VTR" })
