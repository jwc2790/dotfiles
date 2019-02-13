#############################################
## add bin folder to $PATH so it can be run
#############################################

export PATH="$HOME/bin:$HOME/.local/bin:$PATH"

#############################################
## NVM 
#############################################

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

#############################################
## PYENV 
#############################################

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1 >/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi