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
Plug 'scrooloose/syntastic' " 170906 Syntax checking

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
" Set our leader to be ,
let mapleader = ","
syntax enable
set encoding=utf-8
set clipboard=unnamed " [170819]

" 170814
filetype plugin indent on

" default timeoutlen is 1000


" Insert lines without entering insert mode
" nmap OO O<ESC>
" nmap oo o<ESC>


" 1. Language


" 2. Completion


" 3. Code display
set background=dark
colorscheme solarized
set number " have line numbers on [170714]
set tabstop=2 " show existing tab with 2 spaces width

" On pressing tab, insert 2 spaces (instead of tabs)
set expandtab



" 4. Integrations


" 5. Interface


" 6. Commands


" 7. Other
" when indenting with '>', use 2 spaces width
set shiftwidth=2


" ===============================================
" === SETTINGS (Plugins) ========================
" ===============================================

" === NERDTree ==================================
" Ctrl-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Toggle NERDTreeToggle
noremap <Leader>n :NERDTreeToggle<cr>

" Focus NERDTree
noremap <Leader>f :NERDTreeFind<cr>

" Focus NERDTree
noremap <Leader>n :NERDTreeFocus<cr>

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


" === LIGHTLINE =================================
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" === FUGITIVE ==================================
set statusline=%{fugitive#statusline()}


" === SYNTASTIC =================================
" Settings for Syntastic [170906]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" Actually enable some checkers
let g:syntastic_javascript_checkers=['eslint']


" ===============================================
" My Mappings
" ===============================================
" ===============================================

" /=== MOVING LINES [170909] ====================

" move, in normal mode
" :m = move
" .+1 = current line number + 1
" :m+1 (same as :m+) = move current line down to current line number + 1
" == re-indents the line to suit its new position
nnoremap <A-j> :m .+1<CR>==

" move up
" same as :m-2
" move current line up to (current line number minus 2)
nnoremap <A-k> :m .-2<CR>==

" move, in insert mode
" == reindents
" g = ?
" i = enter insert mode again
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi

" we can move blocks of lines too, in visual mode
" '> = a mark that identifies the selection END
" '< = start of selection
" gv = reselects the last visual block
" = reindents
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" \==============================================




" /=== SEARCH ===================================
" ignore these directories
set wildignore+=**/node_modules,**/coverage

" Search and replace [170918]
:nnoremap <Leader>s :%s /\<<C-r><C-w>\>//g<Left><Left>
" Find all occurrences of the word under the cursor, and replace it with the
" typed word 
"
" :s          Substitute
" :%s         Substitute in entire file (% is the same as 1,$)
" :\<         Matches the beginning of a word
" :\>         Matches the end of a word
" :\< \>      Matches the exact word inside
" <C-r><C-w>  Copies the word under the cursor into the command line
"             CTRL-R = Insert the contents of a register named...
"             CTRL-W = this is our 'register' we are inserting from
" / /         Our search pattern is inside this
" /           The character '/', after which we pass our substitute options
" g           Our global option (replace all occcurences)
" gc          This option would replace all occurrences, but ask confirmation



