require("gitlinker").setup({
  mappings = "<leader>gy",
  callbacks = {
    ["gitlab.buzzjective.com"] = require("gitlinker.hosts").get_gitlab_type_url,
  },
})
