# ~/.bashrc
set -o vi
bind 'set completion-ignore-case on'
shopt -s cdspell
complete -d cd
bind '"jk":vi-movement-mode'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"

# SOURCES
export PATH="$HOME/.local/bin:$HOME/CODES/scripts:$PATH"
eval "$(starship init bash)"

# ALIASES
alias ls='ls --color=auto'
alias c=clear
alias v=nvim
alias l="ls -al --color=auto"
alias ..="cd .."
