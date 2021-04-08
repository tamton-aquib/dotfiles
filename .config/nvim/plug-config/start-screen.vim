
let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ ]

let g:startify_bookmarks = [
            \ { 'Q': '~/.config/qtile/config.py' },
            \ { 'I': '~/.config/nvim/init.vim' },
            \ { 'F': '~/.config/fish/config.fish' },
            \ { 'K': '~/.config/kitty/kitty.conf' },
            \ { 'A': '~/.config/alacritty/alacritty.yml' },
            \ ]

let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0

let g:startify_custom_header = [
        \'  ▄▄▄█████▓    ▄▄▄          ▄▄▄██▀▀▀',
        \'  ▓  ██▒ ▓▒   ▒████▄          ▒██',
        \'  ▒ ▓██░ ▒░   ▒██  ▀█▄        ░██',
        \'  ░ ▓██▓ ░    ░██▄▄▄▄██    ▓██▄██▓',
        \'    ▒██▒ ░     ▓█   ▓██▒    ▓███▒',
        \'    ▒ ░░       ▒▒   ▓▒█░    ▒▓▒▒░',
        \'      ░         ▒   ▒▒ ░    ▒ ░▒░',
        \'    ░           ░   ▒       ░ ░ ░',
        \'                    ░  ░    ░   ░',
        \ ]
