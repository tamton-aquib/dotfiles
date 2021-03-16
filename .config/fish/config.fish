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

# Vi mode mapped Esc to jk
function fish_user_key_bindings
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
