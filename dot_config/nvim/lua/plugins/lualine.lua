local function current_date()
  return os.date("%F")
end

require("lualine").setup({
  options = {
    icons_enabled = true,
    theme = "tokyonight",
    component_separators = { left = "|", right = "|" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = {},
    always_divide_middle = true,
    globalstatus = false,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filetype", "filename", "g:coc_status", "MatchupStatusOffscreen" },
    lualine_x = { current_date, "encoding", "fileformat" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
