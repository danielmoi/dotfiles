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

## Edit
u = undo [o]
D = delete from here, to end of line [170828]
dd = delete whole line [o]

## Copy
yy or Y = yank current line, including the newline character at the end of the line [170828]
y$ = yank from here, to end of line, but not newline character at the end
= go to start of line, copy to end, exclude newline


"*
- this is clipboard access, where we are using the "* register (there is also a "+ register)
"*Y = yank whole line to clipboard
<S-V>, visual select, then "*y to copy selection to clipboard

yiw = yank word, inside (no surrounding whitespace) [170828]
yiw = yank word, around (no surrounding whitespace) [170828]


We can also do visual select 
<S-V>, and then navigate using keys to select text, and then YANK

## Paste
p = paste after cursor
P = paste before cursor
"*p = paste from * register

## Cut
dd or D = cut current line, including the newline character at the end of the line [170828]


## Delete
x = delete character, under cursor




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
