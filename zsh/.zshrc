#local ret_status="%(?:%{$fg_bold[green]%}ƒ:%{$fg_bold[red]%}ƒ)"
#PROMPT='${ret_status} %{$fg[white]%}%c%{$reset_color%} '

# Init oh-my-zsh
#export ZSH=~/.oh-my-zsh
#plugins=(docker cargo)
#source $ZSH/oh-my-zsh.sh

# Override LSCOLORS from oh-my-zsh
#LSCOLORS=exfxcxdxbxegedabagacad

#export CLICOLOR=1
#export LSCOLORS=ExGxBxDxCxEgEdxbxgxcxd

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

# Misc
alias zshconf="vim ~/.zshrc"
alias fishconf="vim ~/.config/fish/config.fish"
alias snippetsconf="vim ~/.snippets"
alias appiconupdate="appiconupdate ~/.dotfiles/icons"
alias netinfo="networksetup -getinfo Wi-Fi"
