ln -flags source target

ln -si

-s makes a symlink
-i if the target file exists, warn

ln -si ~/.dotfiles/.vimrc ~/.vimrc

Can check if that link worked

In Vim, :echo $VIMRC
If nothing appears in the bottom bar, then the link was incorrect
