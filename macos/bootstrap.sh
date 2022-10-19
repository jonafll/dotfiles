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

# Create .config
if ! [ -d ~/.config/alacritty ]; then
  mkdir -p ~/.config/alacritty
fi

# Symlink configs
ln -s "$DOTFILES_DIR"/vim/.vimrc ~/.vimrc
ln -s "$DOTFILES_DIR"/zsh/.zshrc ~/.zshrc
ln -s "$DOTFILES_DIR"/git/.gitconfig ~/.gitconfig
ln -s "$DOTFILES_DIR"/npm/.npmrc ~/.npmrc
ln -s "$DOTFILES_DIR"/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

if ! [ -d ~/Library/Application\ Support/Code ]; then
  echo "Visual Studio Code is not installed. Execute these commands manually:"
  echo "ln -s ~/.dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json"
  echo "ln -s ~/.dotfiles/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json"
else
  ln -s "${DOTFILES_DIR}"/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
  ln -s "${DOTFILES_DIR}"/vscode/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
fi

# Install oh-my-zsh
echo "Installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew
echo "Installing homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Opt out of analytics
brew analytics off

# Install all homebrew packages
brew bundle --file "$DOTFILES_DIR"/homebrew/Brewfile

# Install vim-plug
echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install spot
echo "Installing spot..."
curl -sSL https://github.com/jonafll/spot/releases/download/v0.2.0/spot.sh > /usr/local/bin/spot && chmod 755 /usr/local/bin/spot

# Install appiconupdate
echo "Installing appiconupdate..."
curl -sSL https://github.com/jonafll/appiconupdate/releases/download/v0.3.0/appiconupdate.sh > /usr/local/bin/appiconupdate && chmod 755 /usr/local/bin/appiconupdate

# Install app-cleaner
echo "Installing app-cleaner..."
curl -sSL https://sunknudsen.com/static/media/privacy-guides/how-to-clean-uninstall-macos-apps-using-appcleaner-open-source-alternative/app-cleaner.sh > /usr/local/bin/app-cleaner && chmod 755 /usr/local/bin/app-cleaner

# Install cheat.sh client
echo "Installing cheat.sh..."
curl -sSL https://cht.sh/:cht.sh > /usr/local/bin/cht && chmod 755 /usr/local/bin/cht

# Install rustup
echo "Installing rustup..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install fonts
echo "Installing fonts..."
cp -R "$DOTFILES_DIR"/fonts/* ~/Library/Fonts/

# Update icons
appiconupdate "$DOTFILES_DIR"/icons

echo "Done 🍻"
echo "Next steps:"
echo "  - Restore macos defaults (Run ./macos/defaults.sh)"
echo "  - Install vscode extensions (Run make inst-ext)"
