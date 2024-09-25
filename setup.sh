#!/bin/bash

# Copy my .bash files and console aliases
cp -r home/.bash/ ~/
cp home/.bash_aliases ~/.bash_aliases

# Update and upgrade apt before installing packages
apt update && apt upgrade

# Install curl and wget
apt install curl wget

# Install tar, zip, unzip and gzip
apt install tar zip unzip gzip

# Install git and bash-completion
apt install git bash-completion

# Download git-bash-completion
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.bash/.git-completion.bash

# Configure git
cp home/.gitconfig ~/.gitconfig
cp home/.gitignore ~/.gitignore

# Install and configure Vim
apt install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp home/.vimrc ~/.vimrc

# Reload bash
source ~/.bashrc

# Install snap and htop
apt install snapd
snap install htop

# Install ssh and gpg
apt install openssh-client gpg

# Install aws-cli
snap install aws-cli --classic

# Install make
apt install make
