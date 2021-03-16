let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1

syntax on
colorscheme sonokai

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
