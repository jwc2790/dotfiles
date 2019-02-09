#############################################
## add bin folder to $PATH so it can be run
#############################################

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

#############################################
## NVM 
#############################################

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
