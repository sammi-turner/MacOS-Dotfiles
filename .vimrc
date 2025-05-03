call plug#begin('~/.vim/plugged')

" Add vim-polyglot for better syntax highlighting
Plug 'sheerun/vim-polyglot'
" Add vim-rainbow for colored matching parentheses
Plug 'frazrepo/vim-rainbow'
call plug#end()

" General settings
set guifont=Menlo\ Regular:h16
set mouse=a
set belloff=all
set linebreak
set incsearch       " Show search matches as you type
set expandtab       " Convert tabs to spaces
set shiftwidth=2    " Indent with 2 spaces
set smarttab        " Better tab behavior
set cmdheight=2     " Better command-line display
set tabstop=2       " Tab width = 2 spaces
set undolevels=1000 " More undo history
set number          " Show line numbers
set background=dark " Dark background

" Enable syntax highlighting
syntax on

" vim-rainbow configuration
let g:rainbow_active = 1  " Enable globally (works for Lisp, Clojure, etc.)
