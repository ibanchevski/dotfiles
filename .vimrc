set number
set nowrap
set encoding=utf-8
set background=dark
syntax on

try
    colorscheme gruvbox
catch /^Vim\%((\a\+)\)\=:E185/
    "Theme (badwolf) not found!"
endtry

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

if has('gui_running')
    set guifont=Consolas:h11
    set guioptions-=T
    set visualbell
    set autoindent
endif
