set TERM "xterm-256color"             
set EDITOR "nvim"
set VISUAL "kate"
set fish_greeting

if status --is-interactive
   clear; echo; echo; seq 1 (tput cols) | sort -R | spark | lolcat; echo; echo
end


## Custom settings
starship init fish | source
thefuck --alias | source


# Sources

for f in (ls ~/.config/fish/functions/)
  source $HOME/.config/fish/functions/$f
end

source $HOME/.config/fish/aliases.fish
source $HOME/.config/fish/exports.fish
