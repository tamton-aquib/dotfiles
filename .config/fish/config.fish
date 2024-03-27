# set TERM "xterm-kitty"             
# set TERM "screen-256color"             
set EDITOR "nvim"
# set VISUAL "kate"
set BROWSER "brave"
set fish_greeting

# Start X at login
if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec Hyprland
	end
end

# Sources
source ~/.bash_aliases
set -x JAVA_HOME /usr/lib/jvm/java-21-openjdk
set -x ANDROID_SDK_ROOT /opt/android-sdk
set -x PYTHON_KEYRING_BACKEND keyring.backends.null.Keyring
# fish_add_path /home/taj/Apps/android-sdk/cmdline-tools/tools/bin/

starship init fish | source
zoxide init fish | source

set fish_cursor_default block
set fish_cursor_insert line
set fish_cursor_replace_one underscore
set fish_cursor_visual block

fish_add_path ~/scripts/
fish_add_path ~/.local/bin/
fish_add_path ~/.cargo/bin/
# fish_add_path ~/Apps/flutter/bin/
fish_add_path ~/.local/share/bob/nvim-bin
fish_add_path /opt/flutter/bin/

# Vi mode mapped Esc to jk
function fish_user_key_bindings
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
