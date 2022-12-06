local h = require("helpers")
local nnoremap = h.nnoremap

vim.g["test#strategy"] = "vtr"

nnoremap("<Leader>t", ":TestFile<CR>", { desc = "Run the tests of the whole file" })
nnoremap("<Leader>s", ":TestNearest<CR>", { desc = "Run the nearest test to the cursor" })
nnoremap("<Leader>a", ":TestSuite<CR>", { desc = "Run the whole test suite" })
nnoremap("<Leader>l", ":TestLast<CR>", { desc = "Re-run the last test command issued" })
