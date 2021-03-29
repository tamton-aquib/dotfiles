let g:currentmode={
    \ 'n'  : ' ',
    \ 'v'  : ' ',
    \ 'V'  : ' ',
    \ "\<C-v>" : ' ',
    \ 'i'  : ' ',
    \ 'c'  : ' ',
    \ 'r'  : 'Prompt',
    \ '!'  : ' ',
    \ 't'  : 'T'
    \}

set stl=
" set stl+=%#DevIconBashrc#
set stl+=%#PmenuSel#
set stl+=\ %{g:currentmode[mode()]}
set stl+=\ %#IncSearch#
set stl+=\ %M
set stl+=%t
set stl+=\ ❱
set stl+=%#Normal#

set stl+=%=
set stl+=\ %y
" set stl+=\ 
set stl+=\ ❰\ 
set stl+=%#Question#
set stl+=\[%l/%c]\ ☰\ %p%%
set stl+=\ 
