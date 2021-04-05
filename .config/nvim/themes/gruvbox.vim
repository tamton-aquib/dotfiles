syntax on
colorscheme gruvbox

let g:gruvbox_contrast_dark = 'hard'

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
