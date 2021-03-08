## Fish command history
#function history
#    builtin history --show-time='%F %T '
#end


function vimrc
    cd ~/.config/nvim/
    v init.vim
end

function backup --argument filename
    cp $filename $filename.bak
end

function fish_user_key_bindings
	fzf_key_bindings
end


## Copy DIR1 DIR2
function copy
    set count (count $argv | tr -d \n)
    if test "$count" = 2; and test -d "$argv[1]"
	set from (echo $argv[1] | trim-right /)
	set to (echo $argv[2])
        command cp -r $from $to
    else
        command cp $argv
    end
end
