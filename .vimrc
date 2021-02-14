autocmd!
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/restore_view.vim'
Plug 'osyo-manga/vim-over'
Plug 'airblade/vim-gitgutter'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-textobj-sentence'
Plug 'reedes/vim-textobj-quote'
Plug 'kana/vim-textobj-user'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'reedes/vim-wordy'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-endwise'
Plug 'bling/vim-bufferline'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdcommenter'
Plug 'rhysd/conflict-marker.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'sheerun/vim-polyglot'
Plug 'daylerees/colour-schemes'
Plug 'christoomey/vim-tmux-runner'
Plug 'christoomey/vim-tmux-navigator'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gcmt/wildfire.vim'
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary' } " The callback needs Rust and Cargo to be available
Plug 'liuchengxu/vista.vim'
Plug 'andymass/vim-matchup'
" HTML
Plug 'hail2u/vim-css3-syntax'
Plug 'alvan/vim-closetag'
" Ruby
Plug 'tpope/vim-rails'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-bundler'
" Elixir
Plug 'carlosgaldino/elixir-snippets'
Plug 'c-brenn/phoenix.vim'
Plug 'slashmili/alchemist.vim'
" Misc
Plug 'wakatime/vim-wakatime'
Plug 'editorconfig/editorconfig-vim'
Plug 'moll/vim-bbye'
Plug 'ryanoasis/vim-devicons'
" Theme
Plug 'Rigellute/rigel'
Plug 'wadackel/vim-dogrun'

" Initialize plugin system
call plug#end()

set shell=/usr/bin/zsh " Make zsh the deafult shell
set background=dark
set t_Co=256
set shiftwidth=2
set smartindent
set relativenumber
set number
set clipboard=unnamedplus   " Use clipboard as register
syntax on
filetype plugin indent on
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8
set encoding=UTF-8
set history=1000                    " Store a ton of history (default is 20)
set spell                           " Spell checking on
set hidden                          " Allow buffer switching without saving
set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
set backup                  " Backups are nice ...
set undofile                " So is persistent undo ...
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
set showmode                    " Display the current mode
set cursorline                  " Highlight current line
set backspace=indent,eol,start  " Backspace for dummies
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set scrolloff=3                 " Minimum lines to keep above and below cursor
set list listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set expandtab                   " Tabs are spaces, not tabs
set softtabstop=4               " Let backspace delete indent
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set splitright                  " Puts new vsplit windows to the right of the current
set splitbelow                  " Puts new split windows to the bottom of the current
set shortmess+=filmnrxoOtT
" Make it obvious where 80 characters is
set textwidth=0
set colorcolumn=80
set laststatus=2
set noautochdir
set showtabline=2 " Always show the Tabline
" Fix syntax highlighting of Ruby RegEx
set re=1
" Indent Guides
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=23
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" enable 24bit true color
set termguicolors
" Beautiful colors
color dogrun
colorscheme dogrun
let g:clap_theme = 'dogrun'
hi clear SpellBad
hi clear SpellCap
hi clear SpellRare
hi SpellBad cterm=underline,Bold
hi link SpellCap SpellBad
hi link SpellRare SpellBad

" This speeds up stuff in vue files
let g:vue_disable_pre_processors=1

" Set leader (NOTICE: The leader is not selected in a democratic election)
let mapleader = ','
let maplocalleader = "-"

"
" Mappings
"

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" Easier horizontal scrolling
map zl zL
map zh zH

" remap up and down so that they don't jump past wrapped lines
nnoremap j gj
nnoremap k gk

" Formatting code using vim-autoformat
nmap <Leader>f :ALEFix<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Move lines up and down using ALT+j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Sudo when root access is required
cnoremap w!! %!sudo tee > /dev/null %

" Vim rspec custom commands
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader><Leader>l :call RunLastSpec()<CR>
nnoremap <Leader>a :call RunAllSpecs()<CR>

" Buffers
" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap x :bp <BAR> bd #<CR>
nnoremap <Leader>q :Bdelete<CR>
nnoremap <Leader>v :vsp<CR>

" Tabularize
nmap <Leader>a& :Tabularize /&<CR>
vmap <Leader>a& :Tabularize /&<CR>
nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
nmap <Leader>a=> :Tabularize /=><CR>
vmap <Leader>a=> :Tabularize /=><CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
nmap <Leader>a,, :Tabularize /,\zs<CR>
vmap <Leader>a,, :Tabularize /,\zs<CR>
nmap <Leader>a<Bar> :Tabularize /<Bar><CR>
vmap <Leader>a<Bar> :Tabularize /<Bar><CR>
nmap <Leader>a:: :Tabularize /\w:\zs/l0l1<CR>

" Fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>

" Clap
let g:clap_layout = { 'relative': 'editor' }
nnoremap <silent> <c-p> :Clap files<CR>
nnoremap <silent> <leader>g :Clap grep<CR>
nmap <silent> <leader>gg :Clap grep ++query=<cword><CR>
vmap <silent> <leader>gg :Clap grep ++query=@visual<CR>
nnoremap <silent> <leader>b :Clap buffers<CR>
nnoremap <leader>z :Clap tags<CR>

" Vista
let g:vista_default_executive = 'coc'

" Remap moving in autocomplete popup
inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<Up>"

" Splitjoin
let g:splitjoin_normalize_whitespace = 1

" NERDTree
map <C-e> :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeFind<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0
" Project based bookmarks for nerdtree. only works if you always open vim
" in the folder that .NERDTreeBookmarks is located
if filereadable($PWD . "/.NERDTreeBookmarks")
  let g:NERDTreeBookmarksFile = $PWD . "/.NERDTreeBookmarks"
endif

" NERD Commenter
let g:NERDSpaceDelims = 1 " Add spaces after comment delimiters by default
let g:NERDCompactSexyComs = 1 " Use compact syntax for prettified multi-line comments
let g:NERDDefaultAlign = 'left' " Align line-wise comment delimiters flush left instead of following code indentation

" Close tag
let g:closetag_filenames = "*.html,*.xhtml,*.xml,*.jsx,*.js"

" make editor config play well with fugitive
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" make vim-bufferline to not print to statusline as well
let g:bufferline_echo = 0

" disable vim-bookmark when opening nerdtree
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
  nmap mm :BookmarkToggle<CR>
  nmap mi :BookmarkAnnotate<CR>
  nmap mn :BookmarkNext<CR>
  nmap mp :BookmarkPrev<CR>
  nmap ma :BookmarkShowAll<CR>
  nmap mc :BookmarkClear<CR>
  nmap mx :BookmarkClearAll<CR>
endfunction
function! BookmarkUnmapKeys()
  unmap mm
  unmap mi
  unmap mn
  unmap mp
  unmap ma
  unmap mc
  unmap mx
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys() " vim-rspec mappings

" Make those debugger statements painfully obvious
au BufEnter *.rb syn match error contained "\<binding.pry\>"
au BufEnter *.rb syn match error contained "\<debugger\>"
au BufEnter *.js syn match error contained "\<console\>"
au BufEnter *.js syn match error contained "\<debugger\>"
au BufEnter *.coffee syn match error contained "\<console\>"

" Vim tmux runner
let g:VtrPercentage = 25
let g:VtrOrientation = "v"
let g:rspec_command = "VtrSendCommandToRunner! bundle exec bin/rspec {spec}"
map <C-f> :VtrFocusRunner<CR>
nnoremap <leader>sl :VtrSendLinesToRunner<cr>
vnoremap <leader>sl :VtrSendLinesToRunner<cr>

" Make vim work fine with tmux
if &term =~ '^screen'
  " tmux will send xterm-style keys when its xterm-keys option is on
  execute "set <xUp>=\e[1;*A"
  execute "set <xDown>=\e[1;*B"
  execute "set <xRight>=\e[1;*C"
  execute "set <xLeft>=\e[1;*D"
endif

" Wildfire
let g:wildfire_objects = {
      \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
      \ "html,xml" : ["i'", 'i"', "i)", "i]", "i}", "at", "it"],
      \ "ruby" : ["i'", 'i"', "i)", "i]", "i}", "ir", "ar"],
      \ }

" Indent Guides
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" ALE
let g:ale_rust_rls_toolchain = 'stable'
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_fixers = {
\   '*': ['prettier', 'remove_trailing_lines', 'trim_whitespace'],
\   'ruby': ['rubocop'],
\   'javascript': ['eslint'],
\   'vue': ['eslint'],
\   'coffeescript': ['coffee'],
\   'rust': ['rustfmt']
\}

let g:ale_linters = {
\   'csh': ['shell'],
\   'elixir': ['credo'],
\   'javascript': ['eslint'],
\   'rust': ['rls'],
\   'vue': ['eslint', 'vls'],
\   'coffeescript': ['coffee'],
\   'ruby': ['rubocop']
\}
" Do not lint or fix minified files.
let g:ale_pattern_options = {
\ '\.min\.js$': {'ale_linters': [], 'ale_fixers': []},
\ '\.min\.css$': {'ale_linters': [], 'ale_fixers': []},
\}
let g:ale_sign_column_always = 1
let g:ale_rust_cargo_use_clippy = 1

" Conflict Marker
let g:conflict_marker_highlight_group = ''
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'
highlight ConflictMarkerBegin ctermbg=29
highlight ConflictMarkerOurs ctermbg=23
highlight ConflictMarkerTheirs ctermbg=24
highlight ConflictMarkerEnd ctermbg=25

" COC.nvim
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Functions
" Instead of making all backup and temp files in the same directory, move them
" to home.
function! InitializeDirectories()
  let parent = $HOME
  let prefix = 'vim'
  let dir_list = {
        \ 'backup': 'backupdir',
        \ 'views': 'viewdir',
        \ 'swap': 'directory' }

  if has('persistent_undo')
    let dir_list['undo'] = 'undodir'
  endif

  " To specify a different directory in which to place the vimbackup,
  " vimviews, vimundo, and vimswap files/directories, add the following to
  " your .vimrc.before.local file:
  "   let g:spf13_consolidated_directory = <full path to desired directory>
  "   eg: let g:spf13_consolidated_directory = $HOME . '/.vim/'
  let common_dir = parent . '/.' . prefix

  for [dirname, settingname] in items(dir_list)
    let directory = common_dir . dirname . '/'
    if exists("*mkdir")
      if !isdirectory(directory)
        call mkdir(directory)
      endif
    endif
    if !isdirectory(directory)
      echo "Warning: Unable to create backup directory: " . directory
      echo "Try: mkdir -p " . directory
    else
      let directory = substitute(directory, " ", "\\\\ ", "g")
      exec "set " . settingname . "=" . directory
    endif
  endfor
endfunction
call InitializeDirectories()

" Lightline configs
let g:lightline = {
      \ 'colorscheme': 'dogrun',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive' ] ],
      \   'right': [ ['lineinfo' ], ['percent'], [ 'fileformat', 'filetype' ], ['linter_status'] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['bufferline'] ],
      \   'right': [['fileencoding']]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightLineFugitive',
      \   'filename': 'LightLineFilename',
      \   'fileformat': 'LightLineFileformat',
      \   'filetype': 'LightLineFiletype',
      \   'fileencoding': 'LightLineFileencoding',
      \   'mode': 'LightLineMode',
      \ },
      \ 'component_expand': {
      \   'bufferline': 'LightlineBufferline',
      \ },
      \ 'component_type': {
      \   'bufferline': 'tabsel',
      \ },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! LightLineModified()
  return &ft =~ 'help' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! LightlineBufferline()
  call bufferline#refresh_status()
  return [ g:bufferline_status_info.before, g:bufferline_status_info.current, g:bufferline_status_info.after]
endfunction

function! LightLineReadonly()
  return &ft !~? 'help' && &readonly ? 'RO' : ''
endfunction

function! LightLineFilename()
  let fname = expand('%:t')
  return  fname == '__Tagbar__' ? g:lightline.fname :
        \ fname =~ '__Gundo\|NERD_tree' ? '' :
        \ &ft == 'vimfiler' ? vimfiler#get_status_string() :
        \ &ft == 'unite' ? unite#get_status_string() :
        \ &ft == 'vimshell' ? vimshell#get_status_string() :
        \ ('' != LightLineReadonly() ? LightLineReadonly() . ' ' : '') .
        \ ('' != fname ? fname : '[No Name]') .
        \ ('' != LightLineModified() ? ' ' . LightLineModified() : '')
endfunction

function! LightLineFugitive()
  try
    if expand('%:t') !~? 'Tagbar\|Gundo\|NERD' && &ft !~? 'vimfiler' && exists('*fugitive#head')
      let mark = ''  " edit here for cool mark
      let _ = fugitive#head()
      return strlen(_) ? mark._ : ''
    endif
  catch
  endtry
  return ''
endfunction

function! LightLineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! LightLineFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! LightLineFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! LightLineMode()
  let fname = expand('%:t')
  return fname == '__Tagbar__' ? 'Tagbar' :
        \ fname == '__Gundo__' ? 'Gundo' :
        \ fname == '__Gundo_Preview__' ? 'Gundo Preview' :
        \ fname =~ 'NERD_tree' ? 'NERDTree' :
        \ &ft == 'unite' ? 'Unite' :
        \ &ft == 'vimfiler' ? 'VimFiler' :
        \ &ft == 'vimshell' ? 'VimShell' :
        \ winwidth(0) > 60 ? lightline#mode() : ''
endfunction

function! LightLineLinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'OK' : printf(
        \   '%dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
" /Lightline config
