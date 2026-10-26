local mc = require("multicursor-nvim")
mc.setup()

local set = vim.keymap.set

set({ "n", "x" }, "<C-n>", function() mc.matchAddCursor(1) end, { desc = "Add cursor at next match" })
set({ "n", "x" }, "<C-Up>", function() mc.lineAddCursor(-1) end, { desc = "Add cursor above" })
set({ "n", "x" }, "<C-Down>", function() mc.lineAddCursor(1) end, { desc = "Add cursor below" })
set({ "n", "x" }, "<leader>A", mc.matchAllAddCursors, { desc = "Add cursor at every match" })
set({ "n", "x" }, "ga", mc.addCursorOperator, { desc = "Add cursor per line of motion" })
set("x", "I", mc.insertVisual)
set("x", "A", mc.appendVisual)

-- Only active while there are multiple cursors
mc.addKeymapLayer(function(layerSet)
  layerSet({ "n", "x" }, "<C-p>", function() mc.matchAddCursor(-1) end, { desc = "Add cursor at previous match" })
  layerSet({ "n", "x" }, "q", function() mc.matchSkipCursor(1) end, { desc = "Skip to next match" })
  layerSet({ "n", "x" }, "Q", mc.deleteCursor, { desc = "Delete main cursor" })
  layerSet({ "n", "x" }, "<left>", mc.prevCursor)
  layerSet({ "n", "x" }, "<right>", mc.nextCursor)
  layerSet("n", "<leader>a", mc.alignCursors, { desc = "Align cursors" })
  layerSet("n", "<esc>", mc.clearCursors)
end)
