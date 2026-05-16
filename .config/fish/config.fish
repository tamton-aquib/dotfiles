# set TERM "xterm-kitty"             
# set TERM "screen-256color"             
set -gx BROWSER "zen"
set -gx EDITOR "nvim"
set fish_greeting

# Start X at login
if status --is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
        # exec Hyprland
		exec start-hyprland
	end
end

# Sources
source ~/.bash_aliases
# set -x JAVA_HOME /usr/lib/jvm/java-17-openjdk
# set -x ANDROID_SDK_ROOT /opt/android-sdk

# Android stuff
set -x ANDROID_HOME $HOME/Android
# set -x ANDROID_SDK_ROOT $HOME/Android/platform-tools
fish_add_path /home/taj/Android/build-tools/35.0.1
fish_add_path /home/taj/Android/platform-tools
fish_add_path /home/taj/Android/cmdline-tools/latest/bin

set -x PYTHON_KEYRING_BACKEND keyring.backends.null.Keyring
set -x CHROME_EXECUTABLE /usr/bin/brave
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
fish_add_path ~/.local/share/bob/nvim-bin
fish_add_path /opt/flutter/bin/
fish_add_path ~/.local/share/solana/install/active_release/bin

# Vi mode mapped Esc to jk
function fish_user_key_bindings
    bind -M insert jk "if commandline -P; commandline -f cancel; else; set fish_bind_mode default; commandline -f backward-char force-repaint; end"
end
