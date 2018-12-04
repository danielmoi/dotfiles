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
Plug 'rust-lang/rust.vim' " 171022 Rust
Plug 'scrooloose/nerdcommenter' " 171119 Comments

" 2. Completion
Plug 'tpope/vim-surround' " 170826 Change parens, brackets, etc
Plug 'raimondi/delimitmate' " 170826 Auto-close parens

" 3. Code display
Plug 'flazz/vim-colorschemes' " Color schemes [170924]
Plug 'editorconfig/editorconfig-vim' " Editor config [170925]
Plug 'dracula/vim', { 'as': 'dracula' } " [180820]

" 4. Integrations
"
" 5. Interface
"
" 6. Commands
"
" 7. Other
" SETTINGS and MAPPINGS

call plug#end() " initialize plugin system

" -----------------------------------------------
" GENERAL
" -----------------------------------------------
" Use the comma key as the leader
let mapleader = ","

" Use UTF-8 character encoding in display
set encoding=utf-8

" Use the clipboard register '*'
" for all yank, delete, change and put operations
" which would normally go to the unnamed register. [170819]
set clipboard=unnamed

" Set filetype detection on, plugin on, indent on [170814]
filetype plugin indent on

" Turn off all beeping and window flashing
set noeb vb t_vb=


" -----------------------------------------------
" FORMATTING
" -----------------------------------------------
" Set <Tab> width to 2 spaces
" Display only, does not change the character used for <Tab>
set tabstop=2

" On pressing <Tab> only use space characters
" (instead of opening with tab character ">")
set expandtab

" When indenting (using '>'), use 2 spaces
set shiftwidth=2

" Limit screen width to 80 characters [170930]
" Will actually create new line automaticaly (adds EOL)
set textwidth=80

" Highlight the column after 'textwidth' [170930]
set colorcolumn=+1

" turn off textwidth for .sh filetype [171121]
autocmd bufreadpre *.sh setlocal textwidth=0

" prevent reseting of expandtab etc when pasting [180707]
set nopaste



" -----------------------------------------------
" COLORS
" -----------------------------------------------
" Use colors that will look good on a dark background
" Not when using Dracula theme
" set background=dark

" Turn on syntax highlighting
syntax enable

" Use solarized colorscheme
" with background=dark, becomes "solarized-dark"
" colorscheme solarized

" Disable the background light gray highlighting
au ColorScheme * hi Normal ctermbg=None

" -----------------------------------------------
" DISPLAY
" -----------------------------------------------
" Show line numbers [170714]
set number

" Show invisible characters
set list

" Specify glyphs for invisible characters
set listchars=space:.,eol:¬,trail:.,tab:>.

" Set color for NonText characters (eg. . for a space)
highlight NonText ctermfg=238

" Set color for SpecialKey characters (eg. ^G for CTRL-G)
highlight SpecialKey ctermfg=238

" Hide invisible characters in quickfix/location windows [170924]
autocmd FileType qf setlocal nolist

" Hide invisible characters in NERDTree [170924]
autocmd FileType nerdtree setlocal nolist

" Toggle showing invisible characters
nmap <Leader>l :set list!<CR>

" Clear search highlighting on pressing ESC
nnoremap <ESC> :nohlsearch<CR>
" -----------------------------------------------
" WINDOWS
" -----------------------------------------------
" Better window switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" -----------------------------------------------
" MOTION
" -----------------------------------------------

" Up and down using display lines, instead of file lines [180121]
nnoremap j gj
nnoremap k gk


" -----------------------------------------------
" EDITING
" -----------------------------------------------

" Allow Motion commands in Insert Mode [170827]
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

" Insert digraph
" C-K is remapped below to Up Motion in Insert Mode
inoremap <C-D> <C-K>

" -----------------------------------------------
" EDITING - MOVING LINES
" -----------------------------------------------
" Move, in normal mode
" :m = move
" .+1 = current line number + 1
" :m+1 (same as :m+) = move current line down to current line number + 1
" == re-indents the line to suit its new position
nnoremap <A-j> :m .+1<CR>==

" move up
" same as :m-2
" move current line up to (current line number minus 2)
nnoremap <A-k> :m .-2<CR>==

" Move, in insert mode
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

" -----------------------------------------------
" SEARCH
" -----------------------------------------------
" Don't search these directories
set wildignore+=**/node_modules,**/coverage
set wildignore+=*.zip

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

" ===============================================
"
" PLUGINS
"
" ===============================================

" -----------------------------------------------
" NERDTree
" -----------------------------------------------
" NERDTree - toggle
map <C-n> :NERDTreeToggle<Enter>

" NERDTree - focus
noremap <Leader>n :NERDTreeFocus<Enter>

" NERDTree - show hidden files
let NERDTreeShowHidden=1

" NERDTree - close vim if NERDTree is the only thing left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" -----------------------------------------------
" DelimitMate
" -----------------------------------------------
" add a new line when pressing <CR> inside a pair of parens
let g:delimitMate_expand_cr = 1

" don't autoclose "" inside .vimrc
au FileType vim let b:delimitMate_autoclose = 0

" Autocomplete triple quotes (fenced code blocks / python comments)
" Use global variable instead of b: [171130]
let delimitMate_nesting_quotes = ['`', '"']

" -----------------------------------------------
" Lightline
" -----------------------------------------------
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" -----------------------------------------------
" Fugitive
" -----------------------------------------------
set statusline=%{fugitive#statusline()}


" -----------------------------------------------
" Syntastic
" -----------------------------------------------
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


" -----------------------------------------------
" NERDCommenter
" -----------------------------------------------
" Add spaces after comment delimiters by default 171119
let g:NERDSpaceDelims = 1

" Toggle commenting [171119]
map <Leader>/ <Plug>NERDCommenterToggle

" -----------------------------------------------
" Vim Auto Save
" -----------------------------------------------
" let g:auto_save = 1
" let g:auto_save_in_insert_mode = 1
" " Not saving in insert mode though... 171230
" let g:auto_save_events = ["CursorHold", "CursorHoldI", "CompleteDone", "InsertLeave"]


