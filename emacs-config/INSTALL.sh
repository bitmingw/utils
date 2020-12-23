#!/bin/bash

if [ ! which emacs &> /dev/null ]; then
    echo "emacs is not installed in the system"
    exit 1
fi

if [ ! which git &> /dev/null ]; then
    echo "git is not installed in the system"
    exit 1
fi

echo "Configuring spacemacs..."
sleep 1

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
chown -R $(whoami) ~/.emacs.d
chgrp -R $(whoami) ~/.emacs.d

echo "Copying .spacemacs file..."
sleep 1
cp .spacemacs $HOME
