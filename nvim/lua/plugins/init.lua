local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.config/nvim/plugged")

-- VIM
Plug("nvim-lua/plenary.nvim")
Plug("nvim-treesitter/nvim-treesitter", { ["do"] = ":TSUpdate" })
Plug("RRethy/nvim-treesitter-endwise")
Plug("JoosepAlviste/nvim-ts-context-commentstring")
Plug("kana/vim-textobj-user")
Plug("nelstrom/vim-textobj-rubyblock")
Plug("kyazdani42/nvim-web-devicons")
Plug("ethanholz/nvim-lastplace")
Plug("tpope/vim-surround")
Plug("tpope/vim-repeat")
Plug("akinsho/bufferline.nvim")
Plug("nvim-lualine/lualine.nvim")
Plug("kyazdani42/nvim-tree.lua")
Plug("christoomey/vim-tmux-runner")
Plug("christoomey/vim-tmux-navigator")
Plug("MattesGroeger/vim-bookmarks")
Plug("voldikss/vim-floaterm")
Plug("rcarriga/nvim-notify")
-- Editor Helper Tools
Plug("phaazon/hop.nvim")
Plug("RRethy/vim-illuminate")
Plug("mg979/vim-visual-multi")
Plug("lukas-reineke/indent-blankline.nvim", { ["main"] = "ibl" })
Plug("folke/which-key.nvim")
Plug("andymass/vim-matchup")
Plug("AndrewRadev/splitjoin.vim")
Plug("LunarWatcher/auto-pairs")
Plug("numToStr/Comment.nvim")
Plug("godlygeek/tabular")
Plug("arthurxavierx/vim-caser")
Plug("gcmt/wildfire.vim")
-- Telescope
Plug("nvim-telescope/telescope.nvim")
Plug("fannheyward/telescope-coc.nvim")
-- Completions and fixers
Plug("dense-analysis/ale")
Plug("neoclide/coc.nvim", { ["branch"] = "release" })
Plug("SirVer/ultisnips")
Plug("honza/vim-snippets")
-- Git
Plug("lewis6991/gitsigns.nvim")
Plug("tpope/vim-fugitive")
Plug("ruifm/gitlinker.nvim")
Plug("rhysd/conflict-marker.vim")
-- HTML
Plug("windwp/nvim-ts-autotag")
Plug("Shougo/context_filetype.vim")
-- Ruby
Plug("tpope/vim-rails")
Plug("vim-test/vim-test")
-- Zig
Plug("ziglang/zig.vim")
-- Misc
Plug("moll/vim-bbye")
Plug("petertriho/nvim-scrollbar")
Plug("kevinhwang91/nvim-hlslens")
-- Theme
Plug("folke/tokyonight.nvim", { ["branch"] = "main" })

-- AI
Plug("github/copilot.vim")
Plug("CopilotC-Nvim/CopilotChat.nvim")

vim.call("plug#end")

require("plugins.theme")
require("plugins.treesitter")
require("plugins.illuminate")
require("plugins.nvim-tree")
require("plugins.tabularize")
require("plugins.wildfire")
require("plugins.coc")
require("plugins.ale")
require("plugins.vtr")
require("plugins.conflict_marker")
require("plugins.auto-pairs")
require("plugins.autotag")
require("plugins.vim_test")
require("plugins.splitjoin")
require("plugins.hop")
require("plugins.gitsigns")
require("plugins.gitlinker")
require("plugins.matchup")
require("plugins.lualine")
require("plugins.telescope")
require("plugins.floaterm")
require("plugins.which-key")
require("plugins.indent_blankline")
require("plugins.nvim-notify")
require("plugins.bufferline")
require("plugins.fugitive")
require("plugins.nvim-scrollbar")
require("plugins.nvim-hlslens")
require("plugins.comment-nvim")
require("plugins.copilot-chat")

require("nvim-lastplace").setup({})
