call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

colorscheme torte

set nocompatible
set number
set hidden
set hlsearch
set incsearch
set ruler
set visualbell
set wildmode=list:longest

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set backspace=2
set autoindent

" :imap jj <Esc> " When leaving insert mode, the cursor goes one to the left. k makes it go back
" :imap jJ <Esc> " Mapping jJ too since my first normal mode command sometimes uses shift

map <Leader>n :NERDTree<Enter>

vnoremap <Space> zf

filetype on
filetype indent on
filetype plugin on

syntax on

map <Leader>e :MRU<Enter> " TODO: If first entry in MRU buffer is the current file, hit`` "j" to select the item before it. (a la RubyMine)
if bufwinnr(1)
  map + 2<C-w>+    " Think <Shift>+
  map _ 2<C-w>-    " Think <Shift>-
endif

" bind control-l to hashrocket
imap <C-l> <Space>=><Space>

""""""""""""""""""""""""""""
""""""" FOLDING CRAP  """"""
""""""""""""""""""""""""""""

" set foldcolumn=1
" set foldmethod=syntax
" set foldlevelstart=20
" nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>

" Fold the section matching the line's last curly brace, paren, etc
map <Leader>f $zf%
