syntax on

set title
set number
set rnu
set ruler

set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

set showcmd
set cursorline

set hlsearch

colorscheme dracula

call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'

call plug#end()
let g:vimtex_view_method = 'mupdf'
