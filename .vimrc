" syntax highlight
filetype plugin indent on
syntax on

" line numbering
set number

" if hidden is not set, TextEdit might fail
set hidden

" better display for messages
set cmdheight=2

" Configuration file for vim
set modelines=0

" vi-compatibility
set nocompatible
set backspace=2

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup

" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
