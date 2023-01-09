local h = require("helpers")
local g = vim.g
local nnoremap = h.nnoremap

nnoremap("<Leader>f", ":ALEFix<CR>", { desc = "Fix code style" })

g.ale_disable_lsp = 1
g.ale_virtualtext_cursor = 1
g.ale_virtualtext_prefix = "▸ "
g.ale_lint_on_save = 1
g.ale_fix_on_save = 1
g.ale_rust_rls_toolchain = "stable"
g.ale_ruby_rubocop_auto_correct_all = 1
g.ale_sign_error = "😞"
g.ale_sign_warning = "😐"
g.ale_linter_aliases = { vue = { "vue", "javascript", "scss" } }
g.ale_sign_column_always = 1
g.ale_rust_cargo_use_clippy = 1
g.ale_sign_column_always = 1
g.ale_rust_cargo_use_clippy = 1
g.ale_fixers = {
  ["*"] = { "prettier", "remove_trailing_lines", "trim_whitespace" },
  ruby = { "rubocop" },
  javascript = { "eslint" },
  vue = { "prettier", "eslint", "stylelint" },
  coffeescript = { "coffee" },
  rust = { "rustfmt" },
  lua = { "stylua" },
  zig = { "zigfmt" },
  fish = { "fish_indent" },
  sql = { "sqlfluff" },
}
g.ale_linters = {
  csh = { "shell" },
  elixir = { "credo" },
  javascript = { "eslint" },
  rust = { "rls" },
  vue = { "prettier", "volar", "eslint", "stylelint" },
  coffeescript = { "coffee" },
  ruby = { "rubocop" },
  sql = { "sqlfluff" },
}

-- Do not lint or fix minified files.
g.ale_pattern_options = {
  [".min.js$"] = { ale_linters = {}, ale_fixers = {} },
  [".min.css$"] = { ale_linters = {}, ale_fixers = {} },
}

g.ale_ruby_rubocop_executable = "bundle"

vim.cmd([[
highlight link ALEVirtualTextError ErrorMsg
highlight link ALEVirtualTextStyleError ALEVirtualTextError
highlight link ALEVirtualTextWarning WarningMsg
highlight link ALEVirtualTextInfo ALEVirtualTextWarning
highlight link ALEVirtualTextStyleWarning ALEVirtualTextWarning
]])
