source $HOME/.config/nvim/vim-plug/plugins.vim

" THEMES AND STATUSLINE
" Available => gruvbox, onedark, sonokai
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/themes/barbar_tabline.vim

" GENERAL SETTINGS AND MAPPINGS
source $HOME/.config/nvim/general/functions.vim
lua require('settings')
lua require('mappings')

" LSP
lua require('lsps')

" PLUG CONFIGS
lua require('plug_configs.plug-colorizer')
lua require('plug_configs.snipppets')
lua require('plug_configs.telescope-config')
lua require('plug_configs.compe-config')
" Vimscript configs
lua require('plug_configs.floaterm-config')
lua require('plug_configs.markdown-preview')
lua require('plug_configs.bracey')
lua require('plug_configs.startify-config')
lua require('plug_configs.lspconfig')

function! Status()
    return luaeval("require('statusloine').get_statusline()")
endfunction

set stl=%!Status()
