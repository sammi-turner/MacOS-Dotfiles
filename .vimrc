call plug#begin('~/.vim/plugged')

" Add vim-polyglot for better syntax highlighting
Plug 'sheerun/vim-polyglot'

" Dracula color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

set guifont=Menlo\ Regular:h15
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

syntax on
colorscheme dracula
