require("vgit").setup({
  keymaps = {
    ["n <leader>gs"] = "buffer_hunk_stage",
    ["n <leader>gr"] = "buffer_hunk_reset",
    ["n <leader>gp"] = "buffer_hunk_preview",
    ["n <leader>gf"] = "buffer_diff_preview",
    ["n <leader>gh"] = "buffer_history_preview",
    ["n <leader>glu"] = "project_hunks_preview",
    ["n <leader>gls"] = "project_hunks_staged_preview",
    ["n <leader>gd"] = "project_diff_preview",
    ["n <leader>gx"] = "toggle_diff_preference",
  },
  settings = {
    live_blame = {
      enabled = true,
    },
    live_gutter = {
      enabled = true,
      edge_navigation = true, -- This allows users to navigate within a hunk
    },
    authorship_code_lens = {
      enabled = true,
    },
    scene = {
      diff_preference = "split",
    },
  },
})
