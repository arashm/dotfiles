local g = vim.g

g.conflict_marker_highlight_group = ""
g.conflict_marker_begin = "^<<<<<<< .*$"
g.conflict_marker_end = "^>>>>>>> .*$"

vim.cmd([[
  highlight ConflictMarkerBegin ctermbg=29
  highlight ConflictMarkerOurs ctermbg=23
  highlight ConflictMarkerTheirs ctermbg=24
  highlight ConflictMarkerEnd ctermbg=25
]])
