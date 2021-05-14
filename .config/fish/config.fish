set TERM "alacritty"             
set EDITOR "nvim"
set VISUAL "kate"
set fish_greeting

if status is-interactive
  cd $HOME
end

## Custom settings
starship init fish | source

# Sources
source ~/.bash_aliases

set fish_cursor_unknown block

fish_add_path ~/CODES/scripts/dwmscripts/
fish_add_path ~/CODES/scripts/
fish_add_path ~/.local/bin/



# Vi mode mapped Esc to jk
function fish_user_key_bindings
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
