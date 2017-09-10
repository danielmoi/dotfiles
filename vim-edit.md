# Editing 

## Delete
`x` = Delete, a throwback to typewriters and having to over-write an 'x' to "delete"

## Visual Mode
Enter visual mode
Shift + V

Use direction keys to modify selection

Copy to global clipboard
"+Y  

# Paste
p = paste below (the "default" behaviour is next line / below)
P = paste above

(cf. o for insert on new line below, and O for insert new line above)


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
