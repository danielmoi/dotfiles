# APPS
# 170505
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias code="/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Electron"

# 170820
alias vim="nvim"



# DOCKER
alias up="docker-compose up"

# FILES - COPY
# 170820 copy file interactive
alias cp="cp -i"

# 171217 No longer using a root .gitignore
alias cpgitignore="cp ~/dotfiles/gitignore .gitignore"

# 170820 move file interactive
alias mv="mv -i"

# 180331 remove file interactive
alias rm="rm -i"

# FILES - EDIT
alias vimrc="vim ~/dotfiles/vimrc"
alias bashp="vim ~/dotfiles/bash_profile"
alias zshrc="vim ~/dotfiles/zshrc"
alias bashrc="vim ~/dotfiles/bashrc"
alias aliases="vim ~/dotfiles/.aliases.public.sh"

# FILES/FOLDERS - VIEW
# 170819
alias lsl="ls -la | less"
alias lsa="ls -la"

# FILES/FOLDERS - NAVIGATE
alias dotfiles="cd ~/dotfiles"

# GIT
# 161126
alias gb="git branch --sort=committerdate"
alias gc="git commit"
alias gs="git status"
alias gcm="git commit -m"
alias rb="git checkout develop && git pull && git checkout - && git rebase origin/develop"

# 180220
alias hide="git update-index --assume-unchanged"
alias unhide="git update-index --no-assume-unchanged"

# TERMINAL
alias reload=". ~/.zshrc"

# 161023
alias echohome="echo this is my HOME: ${HOME}"
alias echopath="echo this is my PATH: ${PATH}"


# WEBPACK
alias w="webpack"

# YARN
# 170216
alias yb="yarn build"
alias ybd="yarn build:dev"
alias ys="yarn start"
alias yl="yarn lint"
alias ysp="yarn spec"
# 170705
alias yg="yarn go"
alias ya="yarn assets"
alias yj="yarn test:jestcoverage"

# DATES
alias week="date +%V" # 171109
alias day="date +%j" # 171111

