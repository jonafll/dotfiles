#!/usr/bin/env bash

IFS=$'\n'
RED=$'\e[1;31m'
NC=$'\e[0m'

if ! [ -d ~/Library/Application\ Support/Code ]; then
  echo "${RED}Error:${NC} Visual Studio Code is not installed"
  exit 1
fi

if ! [ -f /usr/local/bin/code ]; then
  echo "Install code command in path"
  ln -s /Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code /usr/local/bin/code
fi

while IFS= read -r line; do
  code --install-extension "$line"
done < ~/.dotfiles/vscode/extensions.generated
