#!/bin/bash

# Install Oh My Zsh
echo "Configuring zsh..."
sleep 1

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Setup .zshrc file..."
sleep 1
cp .zshrc $HOME
