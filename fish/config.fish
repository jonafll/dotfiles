# Configuration for fish, the user-friendly command-line shell for UNIX-like operating systems

# Exports

# Disable greeting
set fish_greeting

# Set proper colors
set -x TERM xterm-256color

# Set editor
set -x EDITOR vim

# Language
set -x LANG de_DE.UTF-8

# GPG
set -x GPG_TTY (tty)

# Go
set -x GOPATH ~/.go

# Alias

# Colorize grep output (good for log files) 
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Human-readable sizes
alias df="df -h"

# Changing "ls" to "exa" 
alias ls="exa --color=always"
alias lal="exa -alg --color=always"
alias la="exa -a --color=always"
alias ll="exa -lg --color=always"

# ps
alias psa="ps aux"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps aux | sort -nr -k 4'
alias pscpu='ps aux | sort -nr -k 3'

# Shell Config
alias zshconf="vim ~/.zshrc"
alias fishconf="vim ~/.config/fish/config.fish"

# Update icons
alias appiconupdate="appiconupdate ~/.dotfiles/icons"

# Networking
alias netinfo="networksetup -getinfo Wi-Fi"
alias netls="networksetup -listallnetworkservices"

# Security
alias genpasswd="openssl rand -base64 24"

# Make a detached signature with gpg
alias sigd="gpg --armor --detach-sign"

# Snippets

# Show applications using a certain port
# sudo lsof -i :80

# Show disk usage for directory as sorted with human readable output
# du -sh <DIRECTORY>/* | sort -h

# Clipboard commands (macOS)
# pbcopy < file.txt
# ps aux | pbcopy
# pbpaste > file.txt

# Convert / process images
# sips -s format png input.icns --out output.png
# sips -s format icns input.png --out output.icns