#!/bin/bash

# vim configuration tool by Ming Wen

echo "Configuring vim..."
sleep 1
cd .vim
mkdir -p bundle
cd bundle

if [[ -z "$(ls -A)" ]]; then
    echo "Downloading plugins..."
    sleep 1

    echo "Installing nerdtree..."
    sleep 1
    git clone https://github.com/scrooloose/nerdtree.git

    echo "Installing nerdcommenter..."
    sleep 1
    git clone https://github.com/scrooloose/nerdcommenter.git

    echo "Installing ctrlp..."
    sleep 1
    git clone https://github.com/ctrlpvim/ctrlp.vim.git

    echo "Installing syntastic..."
    sleep 1
    git clone https://github.com/scrooloose/syntastic.git

    echo "Installing vim-airline..."
    sleep 1
    git clone https://github.com/vim-airline/vim-airline.git

    echo "Installing FastFold"
    sleep 1
    git clone https://github.com/Konfekt/FastFold.git

    echo "Installing neocomplete.vim"
    sleep 1
    git clone https://github.com/Shougo/neocomplete.vim.git

    echo "Installing auto-pairs..."
    sleep 1
    git clone https://github.com/jiangmiao/auto-pairs.git

    echo "Installing surround.vim"
    sleep 1
    git clone https://github.com/tpope/vim-surround.git

    echo "Installing vim-multiple-cursors"
    sleep 1
    git clone https://github.com/terryma/vim-multiple-cursors.git

    echo "Installing vim-indent-guides"
    sleep 1
    git clone https://github.com/nathanaelkane/vim-indent-guides.git

    echo "Installing vim-javascript..."
    sleep 1
    git clone https://github.com/pangloss/vim-javascript.git

else
    echo "Plugins have been loaded."
fi

cd ../..

# Install the packages for current user
echo "Copy files for current user $(whoami)"
if [[ "$(whoami)" == "root" ]]; then
    cp -rf .vim .vimrc $HOME
else
    chown -R $(whoami) .vim .vimrc
    chgrp -R $(whoami) .vim .vimrc
    cp -rf .vim .vimrc $HOME
fi

