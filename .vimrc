call plug#begin('~/.vim/plugged')

" Add vim-polyglot for better syntax highlighting
Plug 'sheerun/vim-polyglot'
call plug#end()

set guifont=Menlo\ Regular:h16
set mouse=a
set belloff=all
set linebreak
set showmatch
set hlsearch	    
set smartcase
set ignorecase	    
set incsearch
set expandtab
set shiftwidth=2 smarttab	
set cmdheight=2
set tabstop=2
set undolevels=1000
set number
set background=dark

" different cursor shapes
let &t_SI = "\<Esc>[6 q"  " Thin bar in Insert
let &t_EI = "\<Esc>[2 q"  " Block in Normal

syntax on
