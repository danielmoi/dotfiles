# Bullet train theme
BULLETTRAIN_PROMPT_ORDER=(
  custom
  git
  context
  dir
  time
)

BULLETTRAIN_CUSTOM_MSG="🚀 "
BULLETTRAIN_CUSTOM_BG="white"
BULLETTRAIN_PROMPT_CHAR="$"

SPACESHIP_TIME_SHOW=true
SPACESHIP_KUBECONTEXT_SHOW=false

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

# ZSH_THEME="robbyrussell"
# ZSH_THEME="bullet-train"
# ZSH_THEME="agnoster"
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# Git aliases and functions
# /Users/danielmoi/.oh-my-zsh/plugins/git
plugins=(git)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# 160709
NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Source other files
ln -sf ~/dotfiles/.aliases.public.sh ~/.aliases.public.sh
ln -sf ~/dotfiles/.aliases.private.sh ~/.aliases.private.sh
ln -sf ~/dotfiles/zshrc ~/.zshrc
ln -sf ~/dotfiles/nvim_init ~/.config/nvim/init.vim
ln -sf ~/dotfiles/vimrc ~/.vimrc
source ~/.aliases.public.sh
source ~/.aliases.private.sh

# CONFIG
EDITOR=nvim

# Rust Exercism
if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

# 180714 fzf
# source ~/.fzf.zsh if it exists
# auto-generated
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# 180714 kubectl
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

prod() {
  SERVER=$(kubectl get pods -l app=${1:-jobs-api} -n ${2:-prod} | sed -n 2p | awk '{ print $1 }')
  kubectl exec -it $SERVER -n${2:-prod} bash
}

testing() {
  SERVER=$(kubectl get pods -l app=${1:-jobs-api} -n ${2:-testing} | sed -n 2p | awk '{ print $1 }')
  kubectl exec -it $SERVER -n${2:-testing} bash
}

export PATH="$HOME/.cargo/bin:$PATH"
