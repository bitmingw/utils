#!/bin/bash

echo "Copying settings.json..."
sleep 1
mkdir -p "$HOME/.config/Code/User"
cp settings.json "$HOME/.config/Code/User/settings.json"

echo "Installing extensions..."
sleep 1
cat vscode_extension_list.txt | xargs -n 1 code --install-extension
