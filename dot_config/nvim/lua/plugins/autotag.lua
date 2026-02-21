local filetypes = {
  "html",
  "erb",
  "eruby",
  "javascript",
  "typescript",
  "javascriptreact",
  "typescriptreact",
  "svelte",
  "vue",
  "tsx",
  "jsx",
  "rescript",
  "xml",
  "php",
  "markdown",
  "astro",
  "glimmer",
  "handlebars",
  "hbs",
}
require("nvim-ts-autotag").setup({
  filetypes = filetypes,
})
