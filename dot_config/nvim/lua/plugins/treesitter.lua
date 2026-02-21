-- nvim-treesitter configuration for main branch (requires Neovim 0.11+)

-- 1. Setup (optional, using defaults)
require("nvim-treesitter").setup()

-- 2. Install parsers
require("nvim-treesitter").install({
  "ruby",
  "embedded_template",
  "html",
  "lua",
  "javascript",
  "typescript",
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

-- 3. Enable features via Autocmds
local ignore_filetypes = {
  "TelescopePrompt",
  "lazy",
  "checkhealth",
  "mason",
}

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("treesitter.setup", {}),
  callback = function(args)
    local buf = args.buf
    local filetype = args.match

    -- you need some mechanism to avoid running on buffers that do not
    -- correspond to a language (like oil.nvim buffers), this implementation
    -- checks if a parser exists for the current language
    local language = vim.treesitter.language.get_lang(filetype) or filetype
    if not vim.treesitter.language.add(language) then
      return
    end

    -- replicate `fold = { enable = true }`
    -- vim.wo.foldmethod = "expr"
    -- vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

    -- replicate `highlight = { enable = true }`
    vim.treesitter.start(buf, language)

    -- replicate `indent = { enable = true }`
    vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"

    -- `incremental_selection = { enable = true }` cannot be easily replicated
  end,
})
