set linebreak	    
set showmatch
set visualbell    
set hlsearch

set smartcase
set ignorecase	    
set incsearch
set autoindent

set expandtab	    
set shiftwidth=4	
set smarttab
set softtabstop=4

set ruler
set cmdheight=2
set tabstop=4
set shiftwidth=4

set expandtab
set undolevels=1000
set backspace=indent,eol,start
set termguicolors

set number relativenumber
set nu rnu

" Delimiter pairs
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap { {<Cr>}<Esc>O

" Commands
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-r> :RustFmt<CR>

" Vim Plug
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'maxboisvert/vim-simple-complete'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
call plug#end()

" Color scheme
let g:catppuccin_flavour = "mocha" " latte, frappe, macchiato, mocha
colorscheme catppuccin
