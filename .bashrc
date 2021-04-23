# ~/.bashrc
set -o vi
bind 'set completion-ignore-case on'
shopt -s cdspell
complete -d cd
bind '"jk":vi-movement-mode'
export MANPAGER='nvim +Man!'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$HOME/CODES/scripts:$PATH"

eval "$(starship init bash)"
source ~/.bash_aliases
