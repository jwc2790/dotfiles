# Devbox
# GitHub: @jwc2790
# Email: josephcuffney@gmail.com
# Terminal: Bash

# base image
FROM ubuntu:latest

# ------------------------------------------------------------------------------
# users
# ------------------------------------------------------------------------------

RUN useradd -d /home/jcuffney -ms /bin/bash -g root -G sudo jcuffney

# ------------------------------------------------------------------------------
# meta - set who to log in as and where the working directory is.
# ------------------------------------------------------------------------------

USER jcuffney
WORKDIR /home/jcuffney

# ------------------------------------------------------------------------------
# ports to expose
#
# NOTE: if this is ever to be used in a production environment, these will need
# to be locked down.
# ------------------------------------------------------------------------------

EXPOSE 80
EXPOSE 443

# ------------------------------------------------------------------------------
# linux packages
# ------------------------------------------------------------------------------

RUN sudo apt-get update -yq && \
    sudo apt-get install -yq \
      apt-transport-https \
      curl \
      docker.io \
      git \
      sudo \
      unzip \
      vim \
      zip \
      build-essential \
      libssl-dev \
      zlib1g-dev \
      libbz2-dev \
      libreadline-dev \
      libsqlite3-dev \
      python-pip \
      yarn \
      make \ 
      tmux \
      awscli

# ------------------------------------------------------------------------------
# node (nvm)
# ------------------------------------------------------------------------------

# RUN echo "installing nvm..." \
#   # https://github.com/creationix/nvm
#   # download and run the install script 
#   && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash \
#   # install the latest version of node:
#   # && nvm install node \
#   # && nvm use latest \
#   && echo "done installing nvm."

# ------------------------------------------------------------------------------
# python (pyenv)
# ------------------------------------------------------------------------------

# RUN echo "installing pyenv" \
#   # https://github.com/pyenv/pyenv#installation
#   # https://codestrian.com/index.php/2018/02/18/setting-up-pyenv-on-ubuntu-16-04-the-missing-steps-from-the-other-guides/
#   curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash \
#   # pyenv install 2.7.6 \
#   # pyenv install 3.6.4 \
#   # pyenv use 2.7.6 \
#   echo "done installing pyenv."

# ------------------------------------------------------------------------------
# Java (jenv)
# ------------------------------------------------------------------------------

# ------------------------------------------------------------------------------
# tmux
# ------------------------------------------------------------------------------
# TODO: curl tmux conf into ~ from `jwc2790/dotfiles`

# ------------------------------------------------------------------------------
# vim plugins
# ------------------------------------------------------------------------------
# TODO: curl vim conf into ~ from `jwc2790/dotfiles`

# ------------------------------------------------------------------------------
# aliases
# ------------------------------------------------------------------------------
# TODO: curl .aliases and pipe them into .bash_profile from `jwc2790/dotfiles`

# ------------------------------------------------------------------------------
# configure AWS
# ------------------------------------------------------------------------------