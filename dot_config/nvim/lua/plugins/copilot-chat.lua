require("hop").setup()
local h = require("helpers")
local nnoremap = h.nnoremap

require("CopilotChat").setup({
  window = {
    layout = "float",
  },
  mappings = {
    close = {
      normal = "x",
      insert = "<C-c>",
    },
  },
})

nnoremap("<leader>cc", "<cmd>CopilotChatToggle<CR>")
