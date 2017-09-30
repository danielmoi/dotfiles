## Link
```
ln -flags source target
```

Example:
```
ln -si
```

- `-s` makes a symlink
- `-i` if the target file exists, warn

----

Can check if that link worked – in Vim,
```
:echo $VIMRC
```
If nothing appears in the bottom bar, then the link was incorrect

----
Link some files

```
ln -si ~/.dotfiles/.vimrc ~/.vimrc
ln -si ~/.dotfiles/.bash_profile ~/.bash_profile
ln -si ~/.dotfiles/.zshrc ~/.zshrc
ln -si ~/.dotfiles/.env.sh ~/.env.sh
ln -si ~/.dotfiles/.aliases.public.sh ~/.aliases.public.sh

```
## Remove Symlink
rm .vimrc
