" From https://github.com/gmarik/vundle README sample .vimrc
"==============================================================================
set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My bundles here:
"
" original repos on GitHub
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'aaronfeng/vim-aaronfeng'
Bundle 'scrooloose/nerdtree'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non-GitHub repos
Bundle 'wincent/Command-T'
" Git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
"==============================================================================


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
