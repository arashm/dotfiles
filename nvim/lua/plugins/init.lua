local Plug=vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'
Plug('honza/vim-snippets')
Plug('mg979/vim-visual-multi')
Plug('phaazon/hop.nvim')
Plug('nathanaelkane/vim-indent-guides')
Plug('farmergreg/vim-lastplace')
Plug('lewis6991/gitsigns.nvim')
Plug('reedes/vim-textobj-sentence')
Plug('reedes/vim-textobj-quote')
Plug('kana/vim-textobj-user')
Plug('nelstrom/vim-textobj-rubyblock')
Plug('reedes/vim-wordy')
Plug('tpope/vim-surround')
Plug('tpope/vim-repeat')
Plug('tpope/vim-fugitive')
Plug('tpope/vim-endwise')
Plug('ap/vim-buftabline')
Plug('godlygeek/tabular')
Plug('tyru/caw.vim')
Plug('Shougo/context_filetype.vim')
Plug('rhysd/conflict-marker.vim')
Plug('jiangmiao/auto-pairs')
Plug('sheerun/vim-polyglot')
Plug('christoomey/vim-tmux-runner')
Plug('christoomey/vim-tmux-navigator')
Plug('MattesGroeger/vim-bookmarks')
Plug('AndrewRadev/splitjoin.vim')
Plug('itchyny/lightline.vim')
Plug('w0rp/ale')
Plug('neoclide/coc.nvim', {['branch'] = 'release'})
Plug('gcmt/wildfire.vim')
Plug('liuchengxu/vim-clap', {
  ['do'] = function()
    vim.call(':Clap install-binary')
  end
})
Plug('kkoomen/vim-doge', {
  ['do'] = function()
    vim.call('doge#install()')
  end
})
Plug('liuchengxu/vista.vim')
Plug('andymass/vim-matchup')
-- HTML
Plug('alvan/vim-closetag')
-- Ruby
Plug('tpope/vim-rails')
Plug('vim-test/vim-test')
-- Misc
Plug('editorconfig/editorconfig-vim')
Plug('moll/vim-bbye')
-- Theme
Plug('wadackel/vim-dogrun', {
  ['do'] = function()
    vim.opt.termguicolors = true
    vim.cmd('color dogrun')
    vim.cmd('colorscheme dogrun')
  end
})
vim.call('plug#end')

require('plugins.theme')
require('plugins.nvim-tree')
require('plugins.tabularize')
require('plugins.fugitive')
require('plugins.wildfire')
require('plugins.closetag')
require('plugins.editor_config')
require('plugins.coc')
require('plugins.clap')
require('plugins.vista')
require('plugins.ale')
require('plugins.vtr')
require('plugins.conflict_marker')
require('plugins.vim_test')
require('plugins.splitjoin')
require('plugins.hop')
require('plugins.gitsigns')
require('plugins.lightline')
