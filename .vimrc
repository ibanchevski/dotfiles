syntax on
set background=dark

set number
set nowrap

set nocompatible
" set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set backspace=indent,eol,start
set encoding=utf-8 nobomb

set noeol
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

set modeline
set modelines=4

try
    colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
    "Theme (badwolf) not found!"
endtry

set cursorline
set expandtab
set tabstop=4
set hlsearch
set noerrorbells
set nostartofline

set showmode
set title
set showcmd

if has('gui_running')
    set guifont=Inconsolata-g:11

    if has('linux')
        set guifont=Inconsolata-g\ 12
    endif

    set guioptions-=T
    set visualbell
    set autoindent
endif
