set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/Align'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/denite.nvim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:python3_host_prog = expand('~/.pyenv/shims/python3')

colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
set notitle
set ruler
set number

set shortmess+=I
set ttyfast
set t_Co=256
set hidden
set autoread
set ambiwidth=double
set virtualedit=block
set history=50
set nobackup
set noswapfile

set smartindent
set autoindent
set showmatch
set smarttab
set tabstop=2
set shiftwidth=2
set softtabstop=0
set expandtab
set backspace=indent,eol,start

set clipboard=unnamed,autoselect

set list
set listchars=tab:>-,trail:.

set incsearch
set hlsearch
nmap <ESC><ESC> :noh<CR>

set laststatus=2
set statusline+=%r
set statusline+=%<%F
set statusline+=[%{&fileformat}]
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y
