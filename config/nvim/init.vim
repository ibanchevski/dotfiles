set number
set nowrap
set encoding=utf-8
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


call plug#begin('~/.config/nvim/plugged')

Plug 'neovim/nvim-lspconfig'

Plug 'roxma/LanguageServer-php-neovim',  {'do': 'composer install && composer run-script parse-stubs'}

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

call plug#end()

