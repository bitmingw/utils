#!/bin/bash

if [ ! which zsh &> /dev/null ]; then
    echo "zsh is not installed in the system"
    exit 1
fi

if [ ! which curl &> /dev/null ]; then
    echo "curl is not installed in the system"
    exit 1
fi

if [ ! which git &> /dev/null ]; then
    echo "git is not installed in the system"
    exit 1
fi

echo "Configuring zsh..."
sleep 1
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Downloading spaceship theme..."
sleep 1
if [ -z "$ZSH_CUSTOM" ]; then
    export ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"
fi
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

echo "Copying .zshrc file..."
sleep 1
cp .zshrc "$HOME"
