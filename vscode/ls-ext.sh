#!/usr/bin/env bash

EXT_PATH=~/.dotfiles/vscode/extensions.generated

echo "Capture current installed extensions..."
code --list-extensions > $EXT_PATH
echo "Done. Your output is saved to $EXT_PATH"