###########################################
#############################################
##
##	Joseph Cuffney
##	josephcuffney@gmail.com
##	bash_profile
##
#############################################

echo "source $(brew --prefix nvm)/nvm.sh" >> ~/.profile

#############################################
## Android (brew android sdk) env variable
#############################################

export ANDROID_HOME=/usr/local/opt/android-sdk

#############################################
## add bin folder to $PATH so it can be run
#############################################

export PATH="$PATH:/usr/local/sbin:$HOME/bin"

#############################################
## Terminal Prompt Customization
#############################################

# COLORS

COLOR_PREFIX='\[\033['
COLOR_SUFFIX='\[m'

# NOTE: "" strings can be evaluated whereas
# 	'' strings cannot be evaluated

#GREEN="${COLOR_PREFIX}33${COLOR_SUFFIX}"
#BLUE="${COLOR_PREFIX}57${COLOR_SUFFIX}"
#RED="${COLOR_PREFIX}83${COLOR_SUFFIX}"
#RESET="${COLOR_PREFIX}0${COLOR_SUFFIX}"

# TERMINAL PROMPT

#export PS1="${BLUE}\u@\h ${RED}\w ${GREEN}>>>${RESET} "
export PS1="\u@\h \w >>> "

#############################################
## SSH Forward Agent for OSX Sierra
#############################################

ssh-add -A &> /dev/null

#############################################
## ALIASES
#############################################

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
alias dka='docker ps -a'
alias dki='docker images'
alias dkk='docker kill'
alias dkr='docker rm'
alias dkrmi='docker rmi'
alias dkb='docker build'
alias dkc='docker-compose'
alias dku='docker-compose up -d'
alias dm='docker-machine'

#############################################
## Craftman
#############################################

alias craftman="/Users/jcuffney/.craftman/bin/craftman"

#############################################
## Node - nvm
#############################################

export NVM_DIR="/Users/jcuffney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#############################################
## Ruby Version Manager - rvm
#############################################

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#############################################
## Iterm 2 variables
#############################################

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color
