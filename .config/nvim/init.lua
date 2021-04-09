local cmd = vim.api.nvim_command

cmd('source $HOME/.config/nvim/vim-plug/plugins.vim')

--> THEMES AND STATUSLINE
--> Available => gruvbox, onedark, sonokai
require('themes.barbar_tabline')
require('themes.onedark')

--> GENERAL SETTINGS AND MAPPINGS
require('general.settings')
require('mappings')
require('general.functions')

--> LSP
require('lsps')

--> PLUG CONFIGS
require('plug_configs.plug-colorizer')
require('plug_configs.snipppets')
require('plug_configs.telescope-config')
require('plug_configs.compe-config')
--> Vimscript configs
require('plug_configs.floaterm-config')
require('plug_configs.markdown-preview')
require('plug_configs.bracey')
require('plug_configs.startify-config')
require('plug_configs.lspconfig')

cmd([[
function! Status()
    return luaeval("require('themes.statusloine').get_statusline()")
endfunction

set stl=%!Status()
]])

