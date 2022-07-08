local h = require("helpers")
local nnoremap = h.nnoremap
local vnoremap = h.vnoremap

require("telescope").setup({
  layout_strategy = "horizontal",
  defaults = {
    layout_config = { prompt_position = "top" },
    sorting_strategy = "ascending",
  },
})
require("telescope").load_extension("coc")

nnoremap("<c-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>g", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>b", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>s", "<cmd>Telescope git_status<cr>")
nnoremap("<leader>gg", "<cmd>Telescope grep_string<cr>")
nnoremap("<leader>z", "<cmd>Telescope coc document_symbols<cr>")
