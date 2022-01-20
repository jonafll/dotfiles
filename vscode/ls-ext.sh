#!/usr/bin/env bash

EXT_PATH=~/.dotfiles/vscode/Extensionfile

echo "Capture current installed extensions..."
code --list-extensions > $EXT_PATH
echo "Done. Your output is saved to $EXT_PATH"
