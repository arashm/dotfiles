require('nvim-treesitter').setup()
require('nvim-treesitter').install({
  "ruby",
  "embedded_template",
  "html",
  "lua",
  "javascript",
  "vue",
  "scss",
  "yaml",
  "json",
  "gitcommit",
  "gitignore",
  "markdown",
  "markdown_inline",
  "dockerfile",
  "sql",
  "bash",
  "zig",
})


local ignore_filetypes = {
  'checkhealth',
  'lazy',
  'mason',
}

vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('TreesitterSetup', { clear = true }),
  desc = 'Enable treesitter highlighting and indentation',
  callback = function(event)
    if vim.tbl_contains(ignore_filetypes, event.match) then
      return
    end

    local lang = vim.treesitter.language.get_lang(event.match) or event.match
    local buf = event.buf

    -- Start highlighting immediately (works if parser exists)
    pcall(vim.treesitter.start, buf, lang)

    -- Enable treesitter indentation
    vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

    -- Install missing parsers (async, no-op if already installed)
    require('nvim-treesitter').install({ lang })
  end,
})
vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
