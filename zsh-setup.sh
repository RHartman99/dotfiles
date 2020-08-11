#!/bin/bash

# Update & install ZSH
echo ""
echo "Installing ZSH and dependencies..."
echo ""
sudo apt install zsh

# Install oh-my-zsh and dependencies
sudo apt-get install powerline fonts-powerline
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
chsh -s /bin/zsh