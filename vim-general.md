# General vim tips

-----------------------------------------------------------------------------------------
## Modes
Normal Mode = the characters you type are commands
Insert Mode = the characters you type are inserted as text


-----------------------------------------------------------------------------------------
## Syntax 
<Key>
<C-j> Control key, then the 'j' key

{descriptor}
the "{" indicates "this is what i'm describing inside"
<C-{motion}> Control key, with a "motion" ("motion" is what vim uses for "direction")

-----------------------------------------------------------------------------------------
## Navigating in :help {command}
<C-]>
- this will go "into" the help text (when there is a hotlink)

<C-o> = go to previous help page


## Useful commands

`:only` = make the current window the only one on the screen, all other windows are closed

```
:help index 
```
Show the default keybindings

```
:map
```
Show all user-defined keybindings (user / plugins)

```
:nmap = show visual mode mappings
:vmap = show visual mode mappings
:imap = show insert mode mappings
```
-----------------------------------------------------------------------------------------
## Mapping keys
- map is the "root" of all recursive mapping commands. 
- map, as the root form, applies to "normal", "visual+select", and "operator-pending" modes.
- map is recursive
- "nore" means "not recursive"; "noremap" means "map, but not recursively"

- imap
- map, but only in insert node

### Comments
"
- start with " (omit the closing ")

" === SETTINGS =====================
- this is a nice way to set comments in .vimrc


### Settings
:set showcmd?
- show current value of setting

:set showcmd!
- set current value to toggled  value (invert)

:set no{option}
- set setting to off

### Autocommand

### Variables
[170910]
Variables hold values for various settings / options

b: buffer-variable = local to the current buffer
w: window-variable = local to the current window
t: tabpage-variable = local to the current tab page
g: global-variable = global
l: local-variable = local to a function
s: script-variable = local to a |:source|'ed Vim script
a: function-argument = function argument (only inside a function)
v: vim-variable = global, pre-defined by Vim

Inspect variables with :echo (not :e, which is edit)
```
:echo syntastic_check_on_open 
# 1
```

