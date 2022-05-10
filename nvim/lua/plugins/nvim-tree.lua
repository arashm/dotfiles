local view = require("nvim-tree.view")
local lib = require("nvim-tree.lib")
local h = require("helpers")
local nnoremap = h.nnoremap
local vnoremap = h.vnoremap

nnoremap("<C-e>", ":NvimTreeToggle<CR>")
nnoremap("<leader>n", ":NvimTreeFindFile<CR>")

vim.g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    unstaged = "✗",
    staged = "✓",
    unmerged = "",
    renamed = "➜",
    untracked = "★",
    deleted = "",
    ignored = "◌",
  },
  folder = {
    arrow_open = "",
    arrow_closed = "",
    default = "",
    open = "",
    empty = "",
    empty_open = "",
    symlink = "",
    symlink_open = "",
  },
}

local config = {
  view = {
    mappings = {
      custom_only = false,
      list = {
        { key = "<C-e>", action = "close" },
        { key = "l", action = "edit", action_cb = edit_or_open },
        { key = "L", action = "vsplit_preview", action_cb = vsplit_preview },
        { key = "h", action = "close_node" },
        { key = "H", action = "collapse_all", action_cb = collapse_all },
      },
    },
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
  git = {
    enable = true,
    ignore = false, -- Always show ignored files
    timeout = 400,
  },
}

local function collapse_all()
  require("nvim-tree.actions.collapse-all").fn()
end

local function edit_or_open()
  -- open as vsplit on current node
  local action = "edit"
  local node = lib.get_node_at_cursor()

  -- Just copy what's done normally with vsplit
  if node.link_to and not node.nodes then
    require("nvim-tree.actions.open-file").fn(action, node.link_to)
    view.close() -- Close the tree if file was opened
  elseif node.nodes ~= nil then
    lib.expand_or_collapse(node)
  else
    require("nvim-tree.actions.open-file").fn(action, node.absolute_path)
    view.close() -- Close the tree if file was opened
  end
end

local function vsplit_preview()
  -- open as vsplit on current node
  local action = "vsplit"
  local node = lib.get_node_at_cursor()

  -- Just copy what's done normally with vsplit
  if node.link_to and not node.nodes then
    require("nvim-tree.actions.open-file").fn(action, node.link_to)
  elseif node.nodes ~= nil then
    lib.expand_or_collapse(node)
  else
    require("nvim-tree.actions.open-file").fn(action, node.absolute_path)
  end

  -- Finally refocus on tree if it was lost
  view.focus()
end

require("nvim-tree").setup(config)
