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

let g:getfiletypedict={
    \ 'typescript' : ' ',
    \ 'python': ' ',
    \ 'html' : ' ',
    \ 'css' : ' ',
    \ 'javascript' : ' ',
    \ 'javascriptreact' : ' ',
    \ 'markdown' : ' ',
    \ 'sh' : ' ',
    \ 'vim' : ' ',
    \ 'rust' : ' ',
    \ 'cpp' : ' ',
    \ 'c' : ' ',
    \ 'go' : ' ',
    \ 'lua' : ' ',
    \ 'conf' : ' ',
    \ '' : ' '
    \}

" execute 'highlight StslineSecColorFG guifg=' . g:StslineSecColor   ' guibg=' . g:StslineBackColor
function! Highlighting()
endfunction

function! StslineMode()
    let l:CurrentMode=mode()

    if l:CurrentMode==#"n"
        execute 'highlight Noice guifg=#000000 guibg=#986fec'
        execute 'highlight Arrow guifg=#986fec guibg=#1d2021'
    elseif l:CurrentMode==#"i"
        execute 'highlight Noice guifg=#000000 guibg=#2bbb4f'
        execute 'highlight Arrow guifg=#2bbb4f guibg=#1d2021'
    elseif l:CurrentMode==#"c"
        execute 'highlight Noice guifg=#000000 guibg=#CCCC00'
        execute 'highlight Arrow guifg=#CCCC00 guibg=#1d2021'
    elseif l:CurrentMode==#"v"
        execute 'highlight Noice guifg=#000000 guibg=#4799eb'
        execute 'highlight Arrow guifg=#4799eb guibg=#1d2021'
    elseif l:CurrentMode==#"V"
        execute 'highlight Noice guifg=#000000 guibg=#4799eb'
        execute 'highlight Arrow guifg=#4799eb guibg=#1d2021'
    elseif l:CurrentMode==#"t"
        execute 'highlight Noice guifg=#000000 guibg=#CCCC00'
        execute 'highlight Arrow guifg=#CCCC00 guibg=#1d2021'
    elseif l:CurrentMode==#"!"
        execute 'highlight Noice guifg=#000000 guibg=#CCCC00'
        execute 'highlight Arrow guifg=#CCCC00 guibg=#1d2021'
    endif
    return ""
endfunction

" /*   #e27d60   #de354c #41b3a3  #1f3      #9ca       #f3f3f3     */

set stl=
" set stl+=%#violet#
set stl+=\%#Noice#%{StslineMode()}
set stl+=\ 
set stl+=\ %{g:currentmode[mode()]}
set stl+=\ %#Arrow#%M
set stl+=%#Normal#

set stl+=%=
set stl+=\ %#Arrow#%#Noice#\ 
set stl+=%{g:getfiletypedict[&filetype]}
set stl+=\ ☰\ [%l/%L]\ :%c\ %p%%
set stl+=\ %#Normal#
