let g:green = "#2bbb4f"
let g:violet = "#986fec"
let g:blue = "#4799eb"
let g:yellow = "#fff94c"
let g:back = "#1d2021"
let g:black = "#000000"

let g:currentmode={
    \ 'n'       : ' ',
    \ 'v'       : ' ',
    \ 'V'       : ' ',
    \ "\<C-v>"  : ' ',
    \ 'i'       : ' ',
    \ 'c'       : ' ',
    \ 'r'       : 'Prompt',
    \ '!'       : ' ',
    \ 't'       : 'T'
    \}

let g:getfiletypedict={
    \ 'typescript'      : ' ',
    \ 'python'          : ' ',
    \ 'html'            : ' ',
    \ 'css'             : ' ',
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
    \ '!'       : g:yellow,
    \ 't'       : g:yellow
    \}

let g:color = g:getColor[mode()]

function! Highlighting()
    execute 'highlight Noice guifg=' . g:black ' guibg=' . g:color
    execute 'highlight Arrow guifg=' . g:color ' guibg=' . g:back
endfunction

set stl=
set stl+=\%#Noice#%{StslineMode()}
set stl+=\ \ %{g:currentmode[mode()]}
set stl+=\ %#Arrow#\ %M%#Normal#

set stl+=%=
set stl+=\ %#Arrow#%#Noice#\ 
set stl+=%{g:getfiletypedict[&filetype]}
set stl+=\ ☰\ [%l/%L]\ :%c\ %p%%\ 
