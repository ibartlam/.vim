" https://github.com/tpope/vim-pathogen
execute pathogen#infect()

set nocompatible

set shiftwidth=2
set tabstop=2
set expandtab
set autoindent
set smarttab
set showmatch       " Show matching (), {}, [] pairs

set incsearch       " do incremental searching
set ignorecase      " Search case insensitive
set smartcase       " but not when search pattern contains upper case characters
set hlsearch        " Highlight found searches
" Press Space to turn off highlighting and clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set background=dark
set laststatus=2    " Always show the status line with ruler.
set wildmenu        " Show menu with possible tab completions
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·
set t_Co=256
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
"colorscheme slate
colorscheme tender
filetype plugin indent on

" pretty-print JSON files
autocmd BufRead,BufNewFile *.json set filetype=json
let g:vim_json_syntax_conceal = 0

" Make undo persistant
set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

if &diff
  "Make vimdiff a bit more readable
  "Colours taken from https://stackoverflow.com/questions/2019281/load-different-colorscheme-when-using-vimdiff
  "highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=52
  "highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=52
  "highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=52
  "highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=52
  syntax off
endif

" Spell check for git commits
autocmd FileType gitcommit setlocal spell

