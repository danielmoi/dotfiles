# General vim tips

-----------------------------------------------------------------------------------------
## Background
Vim stands for Vi IMproved
It's written as a proper noun

## Quit
:q    Quit
:q!   Force quit (no saving)
:wq   Write Quit (Save and Quit)

## Motion
h     left
j     down
k     up
l     right


## Modes
Normal Mode = the characters you type are commands
Insert Mode = the characters you type are inserted as text


### Settings
:set showcmd?     show current value of setting
:set showcmd      Toggle option: set, switch it on; Number/String option: show value
:set showcmd!     set current value to toggled  value (invert)
:set no{option}   set setting to off


### Variables
[170910]
Variables hold values for various settings / options

b: buffer-variable    local to the current buffer
w: window-variable    local to the current window
t: tabpage-variable   local to the current tab page
g: global-variable    global
l: local-variable     local to a function
s: script-variable    local to a |:source|'ed Vim script
a: function-argument  function argument (only inside a function)
v: vim-variable       global, pre-defined by Vim

Inspect variables with :echo (not :e, which is edit)

:echo syntastic_check_on_open       #1 will print out (it is on)

## Useful commands
:map          Show all user-defined keybindings (user / plugins)

:nmap         show visual mode mappings
:vmap         show visual mode mappings
:imap         show insert mode mappings

-----------------------------------------------------------------------
## .vimrc

### Comments (.vimrc)
" Comments start with " (omit the closing ")

" === SETTINGS =====================
- this is a nice way to set comments in .vimrc

"/=== A BLOCK =======
"
" Another way to use comments
"
"\===================

## Mapping keys

map       The "root" of all recursive mapping commands. 
          As the root form, applies to "normal", "visual+select", and "operator-pending" modes.
          map is recursive

"nore"    means "not recursive"; "noremap" means "map, but not recursively"

imap      map, but only in insert node

