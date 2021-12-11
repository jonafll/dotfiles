# Configuration for zsh

local ret_status="%(?:%{$fg_bold[green]%}ƒ:%{$fg_bold[red]%}ƒ)"
PROMPT='${ret_status} %{$fg[white]%}%c%{$reset_color%} '

# Init oh-my-zsh
export ZSH=~/.oh-my-zsh
plugins=(docker)
source $ZSH/oh-my-zsh.sh

# Get proper colors
export TERM=xterm-256color

# Set language
export LANG=de_DE.UTF-8

# Set default editor
export EDITOR=vim

# Override bold text from exa
# https://github.com/ogham/exa/blob/b32f441851fdad8b5e3a6aa8cf23e276d7cc1278/man/exa_colors.5.md

# directory: di=34 -> Blue
# block_device: bd=33 -> Yellow
# char_device: cd=33 -> Yellow
# socket: so=31 -> Red
# executable: ex=32
# user_read: ur=33 -> Yellow
# user_write: uw=31 -> Red
# user_execute_file: ux=32 -> Green
# user_execute_other: ue=32 -> Green
# user_you: uu=33 -> Yellow
# group_yours: gu=33 -> Yellow
# links: normal: lc=31 -> Red
# device major id: df=32 -> Green
# sizes: sn=32, nb=32, nk=32, nm=32, ng=32, nt=32 -> Green
export EXA_COLORS=di=34:bd=33:cd=33:so=31:ex=32:ur=33:uw=31:ux=32:ue=32:uu=33:gu=33:lc=31:df=32:sn=32:nb=32:nk=32:nm=32:ng=32:nt=32

# GPG
export GPG_TTY=$(tty)

# Go
export GOPATH=~/.go

# Change cheatsheet config path
export CHEAT_CONFIG_PATH=~/.dotfiles/cheat/conf.yml

# Adds syntax highlighting and auto suggestions
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Alias

# Vim
alias v="vim"

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

# Open configs
alias zshconf="vim ~/.zshrc"
alias vimconf="vim ~/.vimrc"
alias alacrittyconf="vim ~/.dotfiles/alacritty/alacritty.yml"

# Update icons
alias appiconupdate="appiconupdate ~/.dotfiles/icons"

# Networking
alias netinfo="networksetup -getinfo Wi-Fi"
alias netls="networksetup -listallnetworkservices"

# Security
alias genpasswd="openssl rand -base64 24"

# Make a detached signature with gpg
alias sigd="gpg --armor --detach-sign"

# Personal cheatsheets
alias chtp="cheat"
