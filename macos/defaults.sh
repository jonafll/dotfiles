#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront
sudo -v

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Set the icon size of Dock items in pixels
defaults write com.apple.dock "tilesize" -int "48"

# Set the Dock position
defaults write com.apple.dock "orientation" -string "bottom"

# Show recently used apps in a separate section of the Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string ~/Desktop

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Enable subpixel font rendering on non-Apple LCDs
# defaults write NSGlobalDomain AppleFontSmoothing -int 1

# Disable IPv6
networksetup -listallnetworkservices
networksetup -setv6off "Wi-Fi"
networksetup -setv6off "Ethernet"

killall Dock

# Resources: 
# https://macos-defaults.com/
# https://github.com/mathiasbynens/dotfiles/blob/main/.macos
# https://wilsonmar.github.io/dotfiles/