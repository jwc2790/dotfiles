############################################
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
alias ch='checkout'
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

# List
alias ll='ls -alG'
alias lr='ls -R'

# This uses the brew version of vim
# because some of the plugins require
# an updated version of vim
alias vim="/usr/local/bin/vim"
alias vi="/usr/local/bin/vim"

# RUBY ALIASES
alias be="bundle exec "

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
## APPEARANCE
#############################################

#  COLORS
red='\033[91m'
green='\033[92m'
yellow='\033[93m'
white='\033[39m'
reset='\033[0m'


function color_prompt {
	local prompt_tail="\[${red}\]> "
	local last_color="\[${reset}\]"
	export PS1="$prompt_tail$last_color "
}
color_prompt

export NVM_DIR="/Users/jcuffney/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
