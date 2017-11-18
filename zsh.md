# Zsh

```
man zsh
```

## Description
Zsh is a UNIX command interpreter (shell) usable as an interactive login shell
and as a shell script command processor.

Of the standard shells, zsh most closely resembles ksh, but includes many
enhancements.

## Files
Note that we should not source `.bash_profile` because it's a file meant to be
read only by bash, which is not compatible with zsh.
Best to move common ENV vars out and source those from both `.bash_profile` and
`.zshrc`.


## Scripts
If your scripts start with the line #!/bin/bash they will still be run using
bash, even if your default shell is zsh.
