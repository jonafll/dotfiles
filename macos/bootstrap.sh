#!/usr/bin/env bash

RED=$'\e[1;31m'
NC=$'\e[0m'
DOTFILES_DIR=~/.dotfiles

echo "Start bootstrapping..."

if ! [ -d $DOTFILES_DIR ]; then
  echo "${RED}Error:${NC} .dotfiles not found under $DOTFILES_DIR"
  exit 1
fi

if ! [ -d ~/.ssh ]; then
  echo "${RED}Error:${NC} .ssh does not exist"
  exit 1
fi

if ! [ -d ~/.gnupg ]; then
  echo "${RED}Error:${NC} .gnupg does not exist"
  exit 1
fi

# Install Apple's Command Line Tools, which are prerequisities for Git and Homebrew
xcode-select --install

# Symlink configs
ln -s "$DOTFILES_DIR"/vim/.vimrc ~/.vimrc
ln -s "$DOTFILES_DIR"/zsh/.zshrc ~/.zshrc
ln -s "$DOTFILES_DIR"/git/.gitconfig ~/.gitconfig
ln -s "$DOTFILES_DIR"/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

# if ! [ -d ~/.config/fish ]; then
#   mkdir ~/.config/fish && chown 700 ~/.config/fish
# fi
# ln -s "$DOTFILES_DIR"/fish/config.fish ~/.config/fish/config.fish

if ! [ -d ~/Library/Application\ Support/Code ]; then
  echo "Visual Studio Code is not installed"
  echo "Execute this command manually: ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json"
else
  ln -s "${DOTFILES_DIR}"/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Opt out of analytics
brew analytics off

# Install all homebrew packages
brew bundle --file "$DOTFILES_DIR"/homebrew/Brewfile

# Install ship
curl -sSL https://github.com/jonafll/ship/releases/download/v0.2.0/ship.sh > /usr/local/bin/ship && chmod 755 /usr/local/bin/ship

# Install spot
curl -sSL https://github.com/jonafll/spot/releases/download/v0.2.0/spot.sh > /usr/local/bin/spot && chmod 755 /usr/local/bin/spot

# Install appiconupdate
curl -sSL https://github.com/jonafll/appiconupdate/releases/download/v0.2.0/appiconupdate.sh > /usr/local/bin/appiconupdate && chmod 755 /usr/local/bin/appiconupdate

# Install app-cleaner
curl -sSL https://sunknudsen.com/static/media/privacy-guides/how-to-clean-uninstall-macos-apps-using-appcleaner-open-source-alternative/app-cleaner.sh > /usr/local/bin/app-cleaner && chmod 755 /usr/local/bin/app-cleaner

# Install fonts
cp -R "$DOTFILES_DIR"/fonts/* ~/Library/Fonts/

# Update icons
appiconupdate "$DOTFILES_DIR"/icons

# Change shell
# echo /usr/local/bin/fish | sudo tee -a /etc/shells
# chsh -s /usr/local/bin/fish

echo "Done 🍻"
echo "Next steps:"
echo "  - Restore macos defaults (Run ./macos/defaults.sh)"
echo "  - Install vscode extensions (Run make inst-ext)"
