set nocompatible
filetype off

call plug#begin()
    Plug 'EdenEast/nightfox.nvim'
call plug#end()

filetype plugin indent on
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set foldmethod=indent
set foldlevel=99
set autoindent
set expandtab
set hlsearch
set ignorecase
set incsearch
set number
set smartcase
set linebreak
set scrolloff=1
set sidescrolloff=5
syntax enable
set wrap
set laststatus=2
set title
set backspace=indent,eol,start
set history=1000

" web dev section
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8
colorscheme terafox
