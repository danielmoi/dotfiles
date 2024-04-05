# APPS
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"
alias ij="/Applications/IntelliJ\ IDEA\ CE.app/Contents/MacOS/idea"

# DOCKER
# alias up="docker-compose up"
# alias dc="docker-compose"
# alias ds="docker stats $(docker ps --format={{.Names}})"
# alias upapp="docker-compose up app"
# alias killapp="docker-compose kill app"

# FILES - COPY
alias cp="cp -i"
alias cpgitignore="cp ~/dotfiles/gitignore .gitignore"
alias mv="mv -i"
alias rm="rm -i"

# FILES - EDIT
alias vimrc="nvim ~/dotfiles/vimrc"
alias bashp="nvim ~/dotfiles/bash_profile"
alias zshrc="nvim ~/dotfiles/zshrc"
alias bashrc="nvim ~/dotfiles/bashrc"
alias aliases="nvim ~/dotfiles/.aliases.public.bash"

# FILES/FOLDERS - VIEW
alias lsl="ls -la | less"
alias lsa="ls -la"

# FILES/FOLDERS - NAVIGATE
alias dotfiles="cd ~/dotfiles"

# SEARCH
alias rgf="rg --files | rg"

# GIT
alias gb="git branch --sort=committerdate"
alias gc="git commit"
alias gs="git status"
alias gcm="git commit -m"
alias gl="git log --oneline"
alias rb="git checkout develop && git pull && git checkout - && git rebase origin/develop"
alias gra="gco develop && git reset --hard origin/develop \
  && gco master && git reset --hard origin/master"
alias devpull="git checkout develop && git pull -r"
alias gx="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(blue)<%an>%Creset' --abbrev-commit"

alias gl="git log --oneline"
alias hide="git update-index --assume-unchanged"
alias unhide="git update-index --no-assume-unchanged"

# TERMINAL
alias reload=". ~/.zshrc"

# YARN
alias yb="yarn build"
alias ys="yarn start"
alias yl="yarn lint"

# NPM
alias ns="npm start"

# DATES
alias week="date +%V" # 171109
alias day="date +%j" # 171111

# GATSBY
gd="gatsby develop"

# LOL
alias busy="genact -m memdump"
