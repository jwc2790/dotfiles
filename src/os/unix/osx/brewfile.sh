# Installs OSX applications via Homebrew

echo "installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing brew cask..."
brew tap caskroom/cask

echo "updating homebrew"
brew update
brew upgrade
brew doctor
brew prune

echo "installing casks..."

# Utilities
brew cask install 1password
brew cask install flux

# Design Tools
brew cask install zeplin
brew cask install sketch

# Programming Languages
brew install r
brew install nvm
brew install yarn
brew install jenv
brew install pyenv

# Dev Tools
brew install git
brew install cask docker

# Productivity Tools
brew cask install alfred
brew cask install spectacle

# IDE's
brew cask install visual-studio-code
brew cask install intellij-idea
brew cask install atom

# Communication Apps
brew cask install slack
brew cask install skype
brew cask install blue-jeans

# Web Browsers
brew cask install google-chrome
brew cask install firefox

# REST Tools
brew cask install postman

# File Storage
brew cask install google-backup-and-sync

# Notetaking Apps
brew cask install boostnote 

# Entertainment
brew cask install vlc

# Investing 
brew cask install thinkorswim