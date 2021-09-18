function fish_mode_prompt
    if test "$fish_key_bindings" != fish_default_key_bindings
        set --local vi_mode_color
        set --local vi_mode_symbol
        switch $fish_bind_mode
            case default
                # set vi_mode_color (set_color $fish_color_selection)
                set vi_mode_color "\033[32m"
                set vi_mode_symbol 
            case insert
                # set vi_mode_color (set_color $fish_color_selection)
                set vi_mode_color "\033[35m"
                set vi_mode_symbol 
            case replace replace_one
                set vi_mode_color (set_color --reverse $fish_color_selection)
                set vi_mode_symbol R
            case visual
                # set vi_mode_color (set_color --reverse $fish_color_selection)
                set vi_mode_color "\033[94m"
                set vi_mode_symbol 
        end
        string unescape "$vi_mode_color $vi_mode_symbol \x1b[0m "
    end
end
