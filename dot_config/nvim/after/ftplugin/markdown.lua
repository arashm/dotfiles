local o = vim.opt_local

o.wrap = true -- Soft-wrap long lines (global default is nowrap)
o.linebreak = true -- Break at word boundaries, not mid-word
o.breakindent = true -- Wrapped lines keep the indent of their line
o.breakindentopt = "list:-1" -- ...and align under list item text
o.spell = true
o.spelllang = "en"
o.conceallevel = 2 -- Let render-markdown hide markup
