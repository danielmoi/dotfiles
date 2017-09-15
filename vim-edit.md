# Editing 

## Visual Mode & Selecting text
Enter visual mode
Shift + V = select whole line
v = select character (and then direction keys)

Use direction keys to modify selection

-------------------------------------------------------------------------
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
<S-v>, and then navigate using keys to select text, and then YANK


## Cut / Delete
D = cut current line, from this character, to the end
dd = cut current line, including the newline character at the end of the line [170828]

x = Delete, a throwback to typewriters and having to over-write an 'x' to "delete"


# Paste
p     paste below (the "default" behaviour is next line / below)
P     paste above
"*p   paste from the "*" register

(cf. o for insert on new line below, and O for insert new line above)

## Example: Select 2 lines
Shift + V   Enter visual mode
j   Increase selection down
"*Y   Copy to clipboad

## Example: Select all
ggVG  Go to top > Visual mode > Go to bottom

-------------------------------------------------------------------------
## Insert line
`o` = "open" up a new line, below



-------------------------------------------------------------------------
# Move line
:m +1 (or :m+1, space not needed) = move line down 1 line
:m -2 (or :m-1, space not needed) = move line up 1 line

:m 0 = move current line to BEFORE first line
:m $ = move current line to AFTER last line

:m 12 = move to exactly line 12 (if line 12 is below current line)
:m 12 = move to line after line 12 (ie. line 13, if line 12 is above current line)
(this explains why :m -2 works; the line is above, so we need to move one line extra)

Can also do this with blocks of text (select > :m +10)

[170909A] Implmented <A-j> and <A-k> as mappings for these

-------------------

## Search and Replace
[170915]
There is the :s substitute command

:%s/one/two/g         Find "one" in ALL lines, and replace with "two"
:%s/one/two/gc        Same, but ask for confirmation 
:%s/\<one>\>/two/gc   Same, but for EXACT match

:s/one/two/g          Find "one" in THIS line, and replace with "two"

/-----------------------------------------------------------------------

% operator
% this is like a "file operator"

:%s/hi/bye/g    % is a shortcut for 1,$ (line 1 to line end) (find and replace hi with bye in whole file)

we can get help for it at :help :%

It also represents "the current file name"

\-----------------------------------------------------------------------
