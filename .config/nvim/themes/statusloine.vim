let g:green  = "#2bbb4f"
let g:violet = "#986fec"
let g:blue   = "#4799eb"
let g:yellow = "#fff94c"
let g:back   = "#1d2021"
let g:black  = "#000000"
let g:red    = "#e27d60"

let g:leftSeparator = ""
let g:rightSeparator = ""

let g:currentmode={
    \ 'n'       : ' ',
    \ 'v'       : ' ',
    \ 'V'       : ' ',
    \ "\<C-v>"  : ' ',
    \ 'i'       : ' ',
    \ 'c'       : ' ',
    \ 'r'       : 'Prompt',
    \ '!'       : ' ',
    \ 't'       : 'T',
    \ 'R'       : ' '
    \}

let g:getfiletypedict={
    \ 'typescript'      : ' ',
    \ 'python'          : ' ',
    \ 'html'            : ' ',
    \ 'css'             : ' ',
    \ 'javascript'      : ' ',
    \ 'javascriptreact' : ' ',
    \ 'markdown'        : ' ',
    \ 'sh'              : ' ',
    \ 'vim'             : ' ',
    \ 'rust'            : ' ',
    \ 'cpp'             : ' ',
    \ 'c'               : ' ',
    \ 'go'              : ' ',
    \ 'lua'             : ' ',
    \ 'conf'            : ' ',
    \ ''                : ' '
    \}

let g:getColor={
    \ 'n'       : g:violet,
    \ 'v'       : g:blue,
    \ 'V'       : g:blue,
    \ "\<C-v>"  : g:blue,
    \ 'i'       : g:green,
    \ 'c'       : g:yellow,
    \ '!'       : g:red,
    \ 't'       : g:red,
    \ 'R'       : g:red
    \}

function! Highlighting()
    let l:color = g:getColor[mode()]
    execute 'highlight Noice guifg=' . g:black ' guibg=' . l:color
    execute 'highlight Arrow guifg=' . l:color

    if has_key(g:getfiletypedict, &filetype)
        let g:fileIcon = g:getfiletypedict[&filetype]
    else
        let g:fileIcon = ""
    endif

    return ""
endfunction

set stl=
set stl+=%{Highlighting()}%#Noice#
set stl+=\ \ %{g:currentmode[mode()]}
set stl+=\ %#Arrow#%{g:leftSeparator}\ %M%#Normal#

set stl+=%=

set stl+=\ %#Arrow#%{rightSeparator}%#Noice#\ 
set stl+=%{g:fileIcon}
set stl+=\ [%l/%L]\ :%c\ 並%p%%\ 
