###########################################
#############################################
##
##	Joseph Cuffney
##	josephcuffney@gmail.com
##	bash_profile
##
#############################################

#############################################
## add bin folder to $PATH so it can be run
#############################################

export PATH="$PATH:/usr/local/sbin:$HOME/bin"

#############################################
## Terminal Prompt Customization
#############################################

export PS1="\[\e[36m\]\u\[\e[m\]@\[\e[36m\]\h\[\e[m\] \[\e[36m\]\w\[\e[m\] > "

#############################################
## SSH Forward Agent for OSX Sierra
#############################################

ssh-add -A &> /dev/null

#############################################
## ALIASES
#############################################

alias gittree='git log --graph --oneline --all'

# GIT ALIASES
alias gs='git status'
alias gch='git checkout'
alias gb='git branch'
alias push='git push'
alias pull='git pull'
alias stash='git stash'
alias apply='git stash apply'
alias g='git'
alias ga='git add'
alias gaa='git add -A'
alias gcm='git commit -m '
alias gc='git commit '
alias continue='git rebase --continue'
alias abort='git rebase --abort'
alias skip='git rebase --skip'

# BASH ALIASES
alias cl='clear'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

# List
alias ll='ls -al'

# Docker Aliases
alias dk='docker'
alias dkp='docker ps'
alias dkpa='docker ps -a'
alias dki='docker images'
alias dkk='docker kill'
alias dkr='docker rm'
alias dkrmi='docker rmi'
alias dkb='docker build'
alias dkc='docker-compose'
alias dku='docker-compose up -d'
alias dkm='docker-machine'

# Yarn Aliases
alias yi='yarn install'
alias ya='yarn add'
alias ys='yarn start'

#############################################
## Node - nvm
#############################################

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#############################################
## Iterm 2 variables
#############################################

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
