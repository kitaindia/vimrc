set nocompatible              " be iMproved, required
filetype off                  " required

colorscheme molokai
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neomru.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/Align'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

set autoindent
set nosmartindent
set expandtab

autocmd FileType python set shiftwidth=4
autocmd FileType python set tabstop=4
autocmd FileType python set softtabstop=4

autocmd FileType html set shiftwidth=2
autocmd FileType html set tabstop=2
autocmd FileType html set softtabstop=2


set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8

set hidden

set nobackup
set writebackup
set history=100
set ignorecase
set smartcase
set wrapscan
set incsearch

set title
set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
set showcmd
set laststatus=2

set showmatch
set matchtime=3
set matchpairs& matchpairs+=<:>


syntax on
set hlsearch
set wildmenu

set textwidth=0
set wrap

set noswapfile
set nocompatible
set fileformats=unix,dos,mac
set vb t_vb=
set backspace=indent,eol,start
set t_Co=256

set colorcolumn=80

au BufReadPost,BufNewFile *.t :setl filetype=perl
let g:colors_name="pyte"
set term=xterm-256color
source $VIMRUNTIME/macros/matchit.vim
let b:match_words = '<:>,<div.*>:</div>'

:nnoremap <ESC><ESC> :nohlsearch<CR>
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /B!!/
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=


""" unite.vim
" BF~NO%b!<%I$G3+;O$9$k
 let g:unite_enable_start_insert=1
 " B%P%C%U%!0lMw
 nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
 " B%U%!%$%k0lMw
 nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
 " B%l%8%9%?0lMw
 nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
 " B:G6a;HMQ$7$?%U%!%$%k0lMw
 nnoremap <silent> ,um :<C-u>Unite file_mru<CR>
 " B>oMQ%;%C%H
 nnoremap <silent> ,uu :<C-u>Unite buffer file_mru<CR>
 " BA4It>h$;
 nnoremap <silent> ,ua :<C-u>UniteWithBufferDir -buffer-name=files buffer
" file_mru bookmark file<CR>
" B%$%s%5!<%H!?%N!<%^%k$I$A$i$+$i$G$b8F$S=P$;$k$h$&$K%-!<%^%C%W
 inoremap <silent> <C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
 inoremap <silent> <C-f> <ESC>:<C-u>UniteWithBufferDir -buffer-name=files file<CR>
 nnoremap <silent> <C-b> :<C-u>Unite buffer file_mru<CR>
 inoremap <silent> <C-b> <ESC>:<C-u>Unite buffer file_mru<CR>

 " B%&%#%s%I%&$rJ,3d$7$F3+$/
 au FileType unite nnoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
 au FileType unite inoremap <silent> <buffer> <expr> <C-j> unite#do_action('split')
 " B%&%#%s%I%&$r=D$KJ,3d$7$F3+$/
 au FileType unite nnoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
 au FileType unite inoremap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
  " ESCB%-!<$r2B2s2!$9$H=*N;$9$k
 au FileType unite nnoremap <silent> <buffer> <ESC><ESC> q
 au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>q

" unite.vimB>e$G$N%-!<%^%C%T%s%0
 autocmd FileType unite call s:unite_my_settings()
 function! s:unite_my_settings()
   " BC18lC10L$+$i%Q%9C10L$G:o=|$9$k$h$&$KJQ99
   imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
   " ESCB%-!<$r2B2s2!$9$H=*N;$9$k
   nmap <silent><buffer> <ESC><ESC> q
   imap <silent><buffer> <ESC><ESC> <ESC>q
 endfunction

let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : ''
    \ }

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()p

set shortmess+=I
