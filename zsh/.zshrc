# Configuration for zsh

local ret_status="%(?:%{$fg_bold[green]%}ƒ:%{$fg_bold[red]%}ƒ)"
PROMPT='${ret_status} %{$fg[white]%}%c%{$reset_color%} '

# Init oh-my-zsh
export ZSH=~/.oh-my-zsh
plugins=(docker)
source $ZSH/oh-my-zsh.sh

# Override LSCOLORS from oh-my-zsh
# export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd
# export LS_COLORS=ow=36:di=34:fi=32:ex=31:ln=35:

# Get proper colors
export TERM=xterm-256color

# Set language
export LANG=de_DE.UTF-8

# Set default editor
export EDITOR=vim

# GPG
export GPG_TTY=$(tty)

# Go
export GOPATH=~/.go

# Adds syntax highlighting and auto suggestions
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Alias

# Colorize grep output (good for log files) 
alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

# Human-readable sizes
alias df="df -h"

# Navigation 
alias ..="cd .."
alias ...="cd ../.."

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

# Snippets

# Show applications using a certain port
# sudo lsof -i :80

# Hexviewer
# xxd file | less

# Show disk usage for directory as sorted with human readable output
# du -sh <DIRECTORY>/* | sort -h

# Generate password and add it to keychain (macOS)
# security add-generic-password -D secret -U -a "$USER" -s <SECRET_PASSWORD> -w "$(openssl rand -base64 24)"

# Clipboard commands (macOS)
# pbcopy < file.txt
# ps aux | pbcopy
# pbpaste > file.txt

# Convert / process images
# sips -s format png input.icns --out output.png
# sips -s format icns input.png --out output.icns

# Make a detached signature with pgp
# gpg --armor --detach-sign file
