syntax on
set nocompatible
set background=dark

set number
set nowrap
set smartcase

set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab

set backspace=indent,eol,start
set encoding=utf-8 nobomb

set noeol
set backupdir=~/.vim/backups
set directory=~/.vim/swaps

set modeline
set modelines=4

set hlsearch
set incsearch
set noerrorbells
set nostartofline

set showmode
set title
set showcmd
"set cursorline

set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'git@github.com:kien/ctrlp.vim.git'
Plug 'eslint/eslint'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-syntastic/syntastic'
Plug 'leafOfTree/vim-vue-plugin'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'dracula/vim'
Plug 'git@github.com:sheerun/vim-wombat-scheme.git'
call plug#end()

" colorscheme dracula
" colorscheme zenburn

" Syntastic stuff"
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Trigger CoC autocomplete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <c-@> coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Vue config
let g:vim_vue_plugin_config = {
  \'syntax': {
  \   'template': ['html'],
  \   'script': ['javascript'],
  \   'style': ['css'],
  \},
  \'full_syntax': [],
  \'initial_indent': [],
  \'attribute': 0,
  \'keyword': 0,
  \'foldexpr': 0,
  \'debug': 0,
  \}


" Nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
