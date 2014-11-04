set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'nakatakeshi/jump2pm.vim'
Plugin 'vim-scripts/yanktmp.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ZenCoding.vim'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neomru.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-scripts/Align'
Plugin 'thinca/vim-quickrun'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

set clipboard+=unnamed
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=euc-jp,utf-8,sjis

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
set matchtime=2
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
colorscheme molokai
au BufReadPost,BufNewFile *.t :setl filetype=perl
let g:colors_name="pyte"
set term=xterm-256color
source $VIMRUNTIME/macros/matchit.vim
let b:match_words = '<:>,<div.*>:</div>'

:nnoremap <ESC><ESC> :nohlsearch<CR>
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /B!!/
set statusline=%n\:%y%F\ \|%{(&fenc!=''?&fenc:&enc).'\|'.&ff.'\|'}%m%r%=

" --------------------------------------
  " " split window vertically and jump to pm fine.
   noremap fg :call Jump2pm('vne')<ENTER>
  " " jump to pm file in current window
   noremap ff :call Jump2pm('e')<ENTER>
  " " split window horizontal, and ...
   noremap fd :call Jump2pm('sp')<ENTER>
  " " open tab, and ...
   noremap fd :call Jump2pm('tabe')<ENTER>
  " " for visual mode, use Jump2pmV()
   vnoremap fg :call Jump2pmV('vne')<ENTER>
  " ---------------------------------------


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
