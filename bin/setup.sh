
# ############################
# homebrew
# ############################
echo "installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" > /dev/null

echo "Installing brew cask..."
brew tap caskroom/cask

echo "Installing packages"
brew cask

echo "updating homebrew"
brew update
brew upgrade
brew doctor
brew prune

# ############################
# zsh
# ############################

# install
brew install zsh zsh-completions

# set the default shell to zsh
sudo dscl . -create /Users/jcff3 UserShell /usr/local/bin/zsh

# ############################
# install brew packages
# ############################

[[ -f ~/.brewfile ]] && source ~/.brewfile

# ############################
# Install Node Versions 
# ############################

# TODO: should this be a zplug instead?
# if not more to do here...
# install versions
nvm install 8.10.0
nvm install node # latest

# set the default version to latest
nvm use node

# ############################
# Install Python Versions 
# ############################

pyenv install 2.7.8
pyenv install 3.6.0
