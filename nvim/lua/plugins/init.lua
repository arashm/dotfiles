local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

Plug("nvim-lua/plenary.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("nvim-telescope/telescope.nvim")
Plug("kyazdani42/nvim-web-devicons")
Plug("kyazdani42/nvim-tree.lua")
Plug("honza/vim-snippets")
Plug("mg979/vim-visual-multi")
Plug("phaazon/hop.nvim")
Plug("nathanaelkane/vim-indent-guides")
Plug("farmergreg/vim-lastplace")
Plug("tanvirtin/vgit.nvim")
Plug("reedes/vim-textobj-sentence")
Plug("reedes/vim-textobj-quote")
Plug("kana/vim-textobj-user")
Plug("nelstrom/vim-textobj-rubyblock")
Plug("reedes/vim-wordy")
Plug("tpope/vim-surround")
Plug("tpope/vim-repeat")
Plug("tpope/vim-endwise")
Plug("arthurxavierx/vim-caser")
Plug("ap/vim-buftabline")
Plug("godlygeek/tabular")
Plug("tyru/caw.vim")
Plug("Shougo/context_filetype.vim")
Plug("rhysd/conflict-marker.vim")
Plug("jiangmiao/auto-pairs")
Plug("sheerun/vim-polyglot")
Plug("christoomey/vim-tmux-runner")
Plug("christoomey/vim-tmux-navigator")
Plug("MattesGroeger/vim-bookmarks")
Plug("AndrewRadev/splitjoin.vim")
Plug("itchyny/lightline.vim")
Plug("w0rp/ale")
Plug("neoclide/coc.nvim", { ["branch"] = "release" })
Plug("fannheyward/telescope-coc.nvim")
Plug("gcmt/wildfire.vim")
Plug("andymass/vim-matchup")
-- HTML
Plug("alvan/vim-closetag")
-- Ruby
Plug("tpope/vim-rails")
Plug("vim-test/vim-test")
-- Misc
Plug("editorconfig/editorconfig-vim")
Plug("moll/vim-bbye")
-- Theme
Plug("EdenEast/nightfox.nvim")
Plug("sindrets/diffview.nvim")
vim.call("plug#end")

require("plugins.theme")
require("plugins.treesitter")
require("plugins.nvim-tree")
require("plugins.tabularize")
require("plugins.wildfire")
require("plugins.closetag")
require("plugins.editor_config")
require("plugins.coc")
require("plugins.ale")
require("plugins.vtr")
require("plugins.conflict_marker")
require("plugins.vim_test")
require("plugins.splitjoin")
require("plugins.hop")
require("plugins.vgit")
require("plugins.lightline")
require("plugins.diffview")
require("plugins.telescope")
