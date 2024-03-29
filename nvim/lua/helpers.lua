_G.Helper = {}

local get_mapper = function(mode, noremap)
  return function(lhs, rhs, opts)
    opts = opts or {}
    opts.noremap = noremap
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

local getVisualSelection = function()
  vim.cmd('noau normal! "vy"')
  local text = vim.fn.getreg("v")
  vim.fn.setreg("v", {})

  text = string.gsub(text, "\n", "")
  if #text > 0 then
    return text
  else
    return ""
  end
end

Helper.noremap = get_mapper("n", false)
Helper.nnoremap = get_mapper("n", true)
Helper.inoremap = get_mapper("i", true)
Helper.tnoremap = get_mapper("t", true)
Helper.vnoremap = get_mapper("v", true)
Helper.getVisualSelection = getVisualSelection

return Helper
