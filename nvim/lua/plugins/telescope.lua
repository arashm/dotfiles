local h = require("helpers")
local tb = require("telescope.builtin")
local nnoremap = h.nnoremap
local vnoremap = h.vnoremap

require("telescope").setup({
  layout_strategy = "horizontal",
  defaults = {
    layout_config = { prompt_position = "top" },
    sorting_strategy = "ascending",
    cache_picker = { num_pickers = 20 },
  },
})
require("telescope").load_extension("coc")

nnoremap("<c-p>", "<cmd>Telescope find_files<CR>")
nnoremap("<leader>p", "<cmd>Telescope pickers<CR>")
nnoremap("<leader>r", "<cmd>Telescope resume<CR>")
nnoremap("<leader>g", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>b", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>gs", "<cmd>Telescope git_status<cr>")
nnoremap("<leader>gl", "<cmd>Telescope git_commits<cr>")
nnoremap("<leader>gc", "<cmd>Telescope git_branches<cr>")
nnoremap("<leader>z", "<cmd>Telescope coc document_symbols<cr>")
nnoremap("<leader>gg", "<cmd>Telescope grep_string<cr>")

vnoremap("<leader>gg", function()
  local text = h.getVisualSelection()
  tb.live_grep({ default_text = text, prompt_title = "Find word:" .. text })
end)

nnoremap("<leader>gr", function()
  tb.live_grep({ type_filter = "ruby", prompt_title = "Ruby Grep" })
end)

vnoremap("<leader>gr", function()
  local text = h.getVisualSelection()
  tb.live_grep({ default_text = text, type_filter = "ruby", prompt_title = "Ruby Grep: " .. text })
end)

nnoremap("<leader>grr", function()
  local text = vim.call("expand", "<cword>")
  tb.live_grep({ default_text = text, type_filter = "ruby", prompt_title = "Ruby Grep: " .. text })
end)

nnoremap("<leader>gj", function()
  tb.live_grep({ type_filter = "js", prompt_title = "JS Grep" })
end)

vnoremap("<leader>gj", function()
  local text = h.getVisualSelection()
  tb.live_grep({ default_text = text, type_filter = "js", prompt_title = "JS Grep: " .. text })
end)

nnoremap("<leader>gjj", function()
  local text = vim.call("expand", "<cword>")
  tb.live_grep({ default_text = text, type_filter = "js", prompt_title = "JS Grep: " .. text })
end)
