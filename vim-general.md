# General vim tips

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


## Useful commands

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
-----------------------------------------------------------------------------------------
## vimrc

### Mapping keys
- map is the "root" of all recursive mapping commands. 
- map, as the root form, applies to "normal", "visual+select", and "operator-pending" modes.
- map is recursive

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
