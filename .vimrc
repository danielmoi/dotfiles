" execute pathogen#infect()
call plug#begin('~/.vim/plugged')

" INSTRUCTIONS
" :w to save this file
" :so % (or :source %) to reload
" :PlugInstall to install plugins
" 

" This is shorthand for Plug
" 'https://github.com/altercation/vim-colors-solarized'
Plug 'altercation/vim-colors-solarized' " 170825

" On-demand loading 170825
Plug 'scrooloose/nerdtree' " 170824

Plug 'kien/ctrlp.vim' " 170825
Plug 'tpope/vim-fugitive' " 170825
Plug 'itchyny/lightline.vim' " 170825 Status line

" 1. Language
"
" 2. Completion
Plug 'tpope/vim-surround' " 170826 Change parens, brackets, etc
Plug 'raimondi/delimitmate' " 170826 Auto-close parens

" 3. Code display
"
" 4. Integrations
"
" 5. Interface
"
" 6. Commands
"
" 7. Other


call plug#end() " initialize plugin system

" === SETTINGS (General) =======================
syntax enable

" Display
set background=dark
colorscheme solarized

set encoding=utf-8

set number " have line numbers on [170714]

" 170814
filetype plugin indent on

" show existing tab with 2 spaces width
set tabstop=2

" when indenting with '>', use 2 spaces width
set shiftwidth=2

" On pressing tab, insert 2 spaces (instead of tabs)
set expandtab

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" 170819
set clipboard=unnamed

set statusline=%{fugitive#statusline()}

" === SETTINGS (Plugins) ========================

" === NERDTree ==================================
" Ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" show hidden files
let NERDTreeShowHidden=1

" close vim if NERDTree is the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Navigating
" Better split switching [170825]
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Allow navigation inside insert mode [170827]
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l


" === DELIMITMATE ===============================
" add a new line when pressing <CR> inside a pair of parens
let g:delimitMate_expand_cr = 1 

" don't autoclose "" inside .vimrc
au FileType vim let b:delimitMate_autoclose = 0

