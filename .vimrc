" From https://github.com/gmarik/vundle README sample .vimrc
"==============================================================================
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

let mapleader = ","

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-rails.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'aaronfeng/vim-aaronfeng'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'
Plugin 'jstemmer/gotags'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'bling/vim-airline'
Plugin 'nsf/gocode', {'rtp': 'vim/'}

" vim-scripts repos
Plugin 'L9'
Plugin 'FuzzyFinder'
" non-GitHub repos
Plugin 'wincent/Command-T'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required!

"""""""""""""""""""""""""""""""""""""""""""""
" imap - insert
" nmap - normal
" map  - normal, visual, operator appending
" map! - insert, command
"""""""""""""""""""""""""""""""""""""""""""""

" alt-delete to delete one word back
map! <esc><bs> <C-w>
nmap <esc><bs> daw

" alt-d to delete a word foward
map <esc>d dw

" ctrl-e to end of line
imap <c-e> <esc>$a
nmap <c-e> $

" ctrl-a to start of line
imap <c-a> <esc>^i
nmap <c-a> ^

" alt-f to move forward a word
nmap <esc>f w
imap <esc>f <c-o>w

" auto indent
nmap <esc>l ggVG=<c-o><c-o>
imap <esc>l <esc>ggVG=<c-o><c-o>
vmap <esc>l =

" F2 to copy.  F3 to paste
" how do you copy in normal mode and what is the . before w?
" nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>
nmap <F3> :r!pbpaste<CR>
imap <F3> <esc>:r!pbpaste<CR>

" insert ruby debug
nmap <esc>r i require 'ruby-debug'; debugger; 1<CR><esc>
imap <esc>r require 'ruby-debug'; debugger; 1<CR>

" fast movement
nmap <esc>j 5j
nmap <esc>k 5k
imap <esc>j <esc>5ji
imap <esc>k <esc>5ki

" ; not : because of my shiftless : config setup
map <silent> <esc>{ ;!python -mjson.tool %<CR>

autocmd FileType go autocmd BufWritePre <buffer> GoFmt

" for TagBar
nmap <F8> :TagbarToggle<CR>

" for gotags
let g:tagbar_type_go = {
      \ 'ctagstype' : 'go',
      \ 'kinds'     : [
      \ 'p:package',
      \ 'i:imports:1',
      \ 'c:constants',
      \ 'v:variables',
      \ 't:types',
      \ 'n:interfaces',
      \ 'w:fields',
      \ 'e:embedded',
      \ 'm:methods',
      \ 'r:constructor',
      \ 'f:functions'
      \ ],
      \ 'sro' : '.',
      \ 'kind2scope' : {
      \ 't' : 'ctype',
      \ 'n' : 'ntype'
      \ },
      \ 'scope2kind' : {
      \ 'ctype' : 't',
      \ 'ntype' : 'n'
      \ },
      \ 'ctagsbin'  : 'gotags',
      \ 'ctagsargs' : '-sort -silent'
      \ }

set t_Co=256

set laststatus=2
let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'
"source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
