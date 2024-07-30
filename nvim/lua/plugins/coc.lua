local h = require("helpers")
local nnoremap = h.nnoremap
local inoremap = h.inoremap

-- COC will install these extensions if they are missing.
-- These are the extensions that I want on every machine I have by default.
vim.g.coc_global_extensions = {
  "@hexuhua/coc-copilot",
  "coc-css",
  "coc-html",
  "coc-json",
  "coc-lists",
  "coc-marketplace",
  "coc-snippets",
  "coc-tsserver",
  "coc-yaml",
}

function _G.show_docs()
  local cw = vim.fn.expand("<cword>")
  if vim.fn.index({ "vim", "help" }, vim.bo.filetype) >= 0 then
    cmd("h " .. cw)
  elseif vim.api.nvim_eval("coc#rpc#ready()") then
    vim.fn.CocActionAsync("doHover")
  else
    cmd("!" .. vim.o.keywordprg .. " " .. cw)
  end
end

nnoremap("K", "<CMD>lua _G.show_docs()<CR>")
nnoremap("gd", "<Plug>(coc-definition)")
nnoremap("gy", "<Plug>(coc-type-definition)")
nnoremap("gi", "<Plug>(coc-implementation)")
nnoremap("gr", "<Plug>(coc-references)")

vim.cmd([[
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
]])
