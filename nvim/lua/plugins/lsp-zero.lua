local lsp = require("lsp-zero")
local null_ls = require("null-ls")
lsp.preset("recommended")

-- Install these servers by default
lsp.ensure_installed({
  "tsserver",
  "eslint",
  "sumneko_lua",
  "solargraph",
})

null_ls.setup({
  diagnostics_format = "[#{c}] #{m} (#{s})",
  on_attach = require("lsp-format").on_attach,
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnostics.rubocop.with({
      command = "bundle",
      args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.diagnostics.rubocop._opts.args),
    }),
    null_ls.builtins.formatting.rubocop.with({
      command = "bundle",
      args = vim.list_extend({ "exec", "rubocop" }, null_ls.builtins.formatting.rubocop._opts.args),
    }),
    null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.eslint,
  },
})

lsp.nvim_workspace()
lsp.setup()
require("fidget").setup({})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})
