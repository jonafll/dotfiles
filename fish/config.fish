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

# Misc
alias zshconf="vim ~/.zshrc"
alias fishconf="vim ~/.config/fish/config.fish"
alias snippetsconf="vim ~/.snippets"
alias appiconupdate="appiconupdate ~/.dotfiles/icons"
alias netinfo="networksetup -getinfo Wi-Fi"