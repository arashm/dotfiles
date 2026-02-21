return {
  -- Theme
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    branch = "main",
    config = function()
      require("plugins.theme")
    end,
  },
  -- VIM
  { "nvim-lua/plenary.nvim", branch = "master" },
  "nvim-treesitter/nvim-treesitter-context",
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("plugins.treesitter")
    end,
  },
  "RRethy/nvim-treesitter-endwise",
  "JoosepAlviste/nvim-ts-context-commentstring",
  "kana/vim-textobj-user",
  "kyazdani42/nvim-web-devicons",
  {
    "ethanholz/nvim-lastplace",
    config = function()
      require("nvim-lastplace").setup({})
    end,
  },
  "tpope/vim-surround",
  "tpope/vim-repeat",
  {
    "akinsho/bufferline.nvim",
    config = function()
      require("plugins.bufferline")
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("plugins.lualine")
    end,
  },
  {
    "kyazdani42/nvim-tree.lua",
    config = function()
      require("plugins.nvim-tree")
    end,
  },
  {
    "christoomey/vim-tmux-runner",
    config = function()
      require("plugins.vtr")
    end,
  },
  "christoomey/vim-tmux-navigator",
  "MattesGroeger/vim-bookmarks",
  {
    "voldikss/vim-floaterm",
    config = function()
      require("plugins.floaterm")
    end,
  },
  {
    "rcarriga/nvim-notify",
    config = function()
      require("plugins.nvim-notify")
    end,
  },
  -- Editor Helper Tools
  {
    "phaazon/hop.nvim",
    config = function()
      require("plugins.hop")
    end,
  },
  {
    "RRethy/vim-illuminate",
    config = function()
      require("plugins.illuminate")
    end,
  },
  "mg979/vim-visual-multi",
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("plugins.indent_blankline")
    end,
  },
  {
    "folke/which-key.nvim",
    config = function()
      require("plugins.which-key")
    end,
  },
  {
    "andymass/vim-matchup",
    config = function()
      require("plugins.matchup")
    end,
  },
  {
    "AndrewRadev/splitjoin.vim",
    config = function()
      require("plugins.splitjoin")
    end,
  },
  {
    "LunarWatcher/auto-pairs",
    config = function()
      require("plugins.auto-pairs")
    end,
  },
  {
    "godlygeek/tabular",
    config = function()
      require("plugins.tabularize")
    end,
  },
  "arthurxavierx/vim-caser",
  {
    "gcmt/wildfire.vim",
    config = function()
      require("plugins.wildfire")
    end,
  },
  {
    "stevearc/aerial.nvim",
    config = function()
      require("plugins.aerial")
    end,
  },
  {
    "echasnovski/mini.diff",
    config = function()
      require("plugins.mini-diff")
    end,
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    config = function()
      require("tiny-inline-diagnostic").setup()
      vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
    end,
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("plugins.telescope")
    end,
  },
  "fannheyward/telescope-coc.nvim",
  -- Completions and fixers
  {
    "dense-analysis/ale",
    config = function()
      require("plugins.ale")
    end,
  },
  {
    "neoclide/coc.nvim",
    branch = "release",
    config = function()
      require("plugins.coc")
    end,
  },
  "SirVer/ultisnips",
  "honza/vim-snippets",
  -- Git
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("plugins.gitsigns")
    end,
  },
  {
    "tpope/vim-fugitive",
    config = function()
      require("plugins.fugitive")
    end,
  },
  {
    "ruifm/gitlinker.nvim",
    config = function()
      require("plugins.gitlinker")
    end,
  },
  {
    "rhysd/conflict-marker.vim",
    config = function()
      require("plugins.conflict_marker")
    end,
  },
  -- HTML
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("plugins.autotag")
    end,
  },
  "Shougo/context_filetype.vim",
  -- Ruby
  "tpope/vim-rails",
  {
    "vim-test/vim-test",
    config = function()
      require("plugins.vim_test")
    end,
  },
  -- Markdown
  {
    "MeanderingProgrammer/render-markdown.nvim",
    config = function()
      require("plugins.render-markdown")
    end,
  },
  -- Misc
  "moll/vim-bbye",
  {
    "petertriho/nvim-scrollbar",
    config = function()
      require("plugins.nvim-scrollbar")
    end,
  },
  {
    "kevinhwang91/nvim-hlslens",
    config = function()
      require("plugins.nvim-hlslens")
    end,
  },
  {
    "esensar/nvim-dev-container",
    config = function()
      require("plugins.devcontainer")
    end,
  },
  -- AI
  "github/copilot.vim",
  "ravitemer/mcphub.nvim",
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    build = "npm install -g mcp-hub@latest",
    config = function()
      require("plugins.codecompanion")
      require("mcphub").setup()
    end,
  },
  {
    "greggh/claude-code.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim", -- Required for git operations
    },
    config = function()
      require("claude-code").setup()
    end,
  },
}
