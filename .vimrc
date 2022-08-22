syntax on
filetype plugin indent on
let skip_defaults_vim=1

set modelines=0
set number
set hidden
set cmdheight=2
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

" Delimiter pairs
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap { {<Cr>}<Esc>O

" Commands
nnoremap <C-t> :term<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

" Vim Plug
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'maxboisvert/vim-simple-complete'
Plug 'sheerun/vim-polyglot'
Plug 'rust-lang/rust.vim'
call plug#end()
