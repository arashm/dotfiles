local function current_date()
  result = vim.fn.system("date -I")
  return string.gsub(result, "\n", "")
end

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "auto",
    component_separators = { left = ">", right = "|" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filetype", "filename", "g:coc_status" },
    lualine_x = { current_date, "encoding", "fileformat" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
