#! /bin/bash

DOTFILES_PATH=~/Cuffney/dotfiles

main() {
    # ask for sudo credentials
    ask_for_sudo
    # install the macos package manger; homebrew
    install_homebrew
    # clone the dotfiles repository
    clone_dotfiles
    # Installing all packages in Dotfiles repository's Brewfile
    install_packages_with_brewfile
    # Setting up macOS defaults
    setup_macOS_defaults
    # Updating login items
    update_login_items
    # bashrc, bash_profile
    bash_setup
    # python via pyenv
    python_setup
    # nodejs via nvm
    node_setup
    # vim
    vim_setup
    # tmux
    tmux_setup
    # visual studio code plugins, default config
    install_vs_code_extensions
    # ssh: config, keys
    ssh_setup
}

function ask_for_sudo() {
    info "Prompting for sudo password"
    if sudo --validate; then
        # Keep-alive
        while true; do sudo --non-interactive true; \
            sleep 10; kill -0 "$$" || exit; done 2>/dev/null &
        success "Sudo password updated"
    else
        error "Sudo password update failed"
        exit 1
    fi
}

function install_homebrew() {
    info "Installing Homebrew"
    if hash brew 2>/dev/null; then
        success "Homebrew already exists"
    else
        # what to do if this is already done
        xcode-select --install
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null
        if /usr/bin/ruby -e "$(curl -fsSL ${url})"; then
            success "Homebrew installation succeeded"
        else
            error "Homebrew installation failed"
            exit 1
        fi
    fi
}

function clone_dotfiles() {
    info "Cloning dotfiles repository into ${DOTFILES_PATH}"
    if test -e $DOTFILES_PATH; then
        substep "${DOTFILES_PATH} already exists"
        pull_latest $DOTFILES_PATH
        success "Pull successful in ${DOTFILES_PATH} repository"
    else
        url=https://github.com/jwc2790/dotfiles.git
        if git clone "$url" $DOTFILES_PATH && \
           echo "why dosen't the line below work?"; then
           # git remote set-url origin git@github.com:jwc2790/dotfiles.git; then
           success "Dotfiles repository cloned into ${DOTFILES_PATH}"
        else
            error "Dotfiles repository cloning failed"
            exit 1
        fi
    fi
}

function pull_latest() {
    substep "Pulling latest changes in ${1} repository"
    if git -C $1 pull origin master &> /dev/null; then
        return
    else
        error "Please pull latest changes in ${1} repository manually"
    fi
}

function install_packages_with_brewfile() {
    BREW_FILE_PATH="${DOTFILES_PATH}/osx/src/brewfile"
    info "Installing packages within ${BREW_FILE_PATH}"
    if brew bundle check --file="$BREW_FILE_PATH" &> /dev/null; then
        success "Brewfile's dependencies are already satisfied "
    else
        if brew bundle --file="$BREW_FILE_PATH"; then
            success "Brewfile installation succeeded"
        else
            error "Brewfile installation failed"
            exit 1
        fi
    fi
}

function setup_macOS_defaults() {
    info "Updating macOS defaults"

    current_dir=$(pwd)
    cd ${DOTFILES_PATH}/osx/src/os
    if bash defaults.sh; then
        cd $current_dir
        success "macOS defaults updated successfully"
    else
        cd $current_dir
        error "macOS defaults update failed"
        exit 1
    fi
}

function update_login_items() {
    info "Updating login items"

    if osascript ${DOTFILES_PATH}/osx/src/os/login_items.applescript &> /dev/null; then
        success "Login items updated successfully "
    else
        error "Login items update failed"
        exit 1
    fi
}

# https://github.com/creationix/nvm
function node_setup() {
    info "Setting up node stuff"

    # https://stackoverflow.com/questions/27651892/homebrew-installs-nvm-but-nvm-cant-be-found-afterwards
    source $(brew --prefix nvm)/nvm.sh

    VERSIONS=(v8.10.0 --lts)

    for VERSION in $VERSIONS
    do
        if [ ! -d "~/.nvm/versions/$VERSION" ]; then
            info "instaslling node version: $VERSION"
            nvm install $VERSION
        else 
            info "$VERSION already installed."
        fi
    done

    # install typescript
    npm install -g typescript
    npm install -g create-react-app
    npm install -g eslint

    success "Set up node stuff successfully"
}

# https://github.com/pyenv/pyenv
function python_setup() {
    info "Setting up python stuff"

    VERSIONS=(2.7.8 3.7.0)

    for VERSION in $VERSIONS
    do
        if [ ! -d "$(pyenv root)/versions/$VERSION" ]; then
            info "instaslling python version: $VERSION"
            CFLAGS="-I$(xcrun --show-sdk-path)/usr/include" pyenv install $VERSION
        else 
            info "$VERSION already installed."
        fi
    done

    success "Set up python stuff successfully"
}

function install_vs_code_extensions() {
    info "Setting up vscode extensions"

    if "${DOTFILES_PATH}/osx/src/vscode/extensions" &> /dev/null; then
        success "Setting up vscode extensions successfully"
    else
        error "Set up vscode extensions failed"
        exit 1
    fi
}

# TODO: create conditionally
function bash_setup() {
    info "Setting up bash"

    ln -sf "${DOTFILES_PATH}/osx/src/bash/.bash_profile" ~/.bash_profile
    ln -sf "${DOTFILES_PATH}/osx/src/bash/.bashrc" ~/.bashrc
    ln -sf "${DOTFILES_PATH}/osx/src/bash/.profile" ~/.profile

    source ~/.bash_profile
    source ~/.bashrc
    source ~/.profile

    success "Setting up bash successfully"
}

# TODO: create conditionally
function vim_setup() {
    info "Setting up vim"

    # install vim-plug as a plugin manager
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # link in vim configuration files
    ln -sf "${DOTFILES_PATH}/osx/src/vim/.vimrc" ~/.vimrc
    ln -sf "${DOTFILES_PATH}/osx/src/vim/plugins" ~/.vim/plugins

    # Install Plugins
    vim +PlugInstall +qall

    success "Setting up vim successfully"
}

# TODO: create conditionally
function tmux_setup() {
    info "Setting up tmux"

    ln -sf "${DOTFILES_PATH}/osx/src/tmux/.tmux.conf" ~/.tmux.conf

    success "Set up tmux successfully"
}

# TODO: create conditionally
function ssh_setup() {
    info "Setting up ssh key"

    ln -sf "${DOTFILES_PATH}/osx/src/ssh/config" ~/.ssh/config

    FILE="$HOME/.ssh/id_rsa.pub"
    if [ ! -f "$FILE" ]; then
        substep "no ssh key found - creating ssh keys"
        ssh-keygen -t rsa
        success "Set up ssh key sussessfully"
    else
        success "ssh key already exist"
    fi

}

function coloredEcho() {
    local exp="$1";
    local color="$2";
    local arrow="$3";
    if ! [[ $color =~ '^[0-9]$' ]] ; then
       case $(echo $color | tr '[:upper:]' '[:lower:]') in
        black) color=0 ;;
        red) color=1 ;;
        green) color=2 ;;
        yellow) color=3 ;;
        blue) color=4 ;;
        magenta) color=5 ;;
        cyan) color=6 ;;
        white|*) color=7 ;; # white or invalid color
       esac
    fi
    tput bold;
    tput setaf "$color";
    echo "$arrow $exp";
    tput sgr0;
}

function info() {
    coloredEcho "$1" blue "========>"
}

function substep() {
    coloredEcho "$1" magenta "===="
}

function success() {
    coloredEcho "$1" green "========>"
}

function error() {
    coloredEcho "$1" red "========>"
}

main "$@"
