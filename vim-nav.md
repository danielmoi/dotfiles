# Vim Navigation

## General Nav
h = left
j = down
k = up
l = right


## Nav + Edit
A = end of line, and add cursor after 
a = enter insert mode, AFTER current cursor position

o = add new line, and enter insert mode
<S-o> = add new line BEFORE, and enter insert mode


## Moving around whilst in Insert mode
[170827]
- <C-o>
- gives you one Normal command, before returning to Insert mode

- <C-o>A
- will put cursor at the end of the line (staying in edit mode)
- this is <C-e> in MacOS
- can also just type over the closing ) though...

- <C-o>j
- will move the cursor down to next line (staying in edit mode)
- this is <C-n> in MacOS

- we can also map <C-hjkl> to allow us to use these keys to navigate inside insert mode
