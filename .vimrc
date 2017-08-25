" execute pathogen#infect()
call plug#begin('~/.vim/plugged')

" :PlugInstall to install plugins

" This is shorthand for Plug
" 'https://github.com/altercation/vim-colors-solarized'
Plug 'altercation/vim-colors-solarized' " 170825

" On-demand loading 170825
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " 170824

" initialize plugin system
call plug#end()

syntax enable

" Display
set background=dark
colorscheme solarized

set encoding=utf-8

" 170714
" have line numbers on
set number

" 170814
filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces (instead of tabs)
set expandtab

" 170819
set clipboard=unnamed
