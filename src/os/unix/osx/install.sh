
# ------------------------------------------------------------------------------ 
# Xcode cli utilities
# ------------------------------------------------------------------------------ 

xcode-select --install

# ------------------------------------------------------------------------------ 
# install brew packages
# ------------------------------------------------------------------------------ 

[[ -f ./.brewfile ]] && source ./.brewfile.sh

# ------------------------------------------------------------------------------ 
# zsh
# ------------------------------------------------------------------------------ 

# set the default shell to zsh
sudo dscl . -create /Users/jcff3 UserShell /usr/local/bin/zsh

# ------------------------------------------------------------------------------ 
# Install Node Versions 
# ------------------------------------------------------------------------------ 

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
nvm install node

# ------------------------------------------------------------------------------ 
# Install Global Node Packages 
# ------------------------------------------------------------------------------ 

npm i -g create-react-app

# ------------------------------------------------------------------------------ 
# Install Python Versions 
# ------------------------------------------------------------------------------ 

pyenv install 2.7.8
pyenv install 3.6.0

# ------------------------------------------------------------------------------ 
# Install awscli 
# ------------------------------------------------------------------------------ 

pip3 install awscli --upgrade --user
aws --version
pip3 install awscli --upgrade --user
