#!/bin/bash

# Install spacemacs
echo "Configuring spacemacs..."
sleep 1

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
chown -R $(whoami) ~/.emacs.d
chgrp -R $(whoami) ~/.emacs.d

echo "Setup .spacemacs file..."
sleep 1
cp .spacemacs $HOME
