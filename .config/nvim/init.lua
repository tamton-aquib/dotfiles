local cmd = vim.api.nvim_command

cmd([[
function! Status()
    return luaeval("require('themes.statusloine').get_statusline()")
endfunction

set stl=%!Status()
]])

require('plugins-list')
require('plug_configs.treesittter')

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
-- require('plug_configs.markdown-preview')
require('plug_configs.bracey')
require('plug_configs.kommmentary')
require('plug_configs.startify-config')
require('plug_configs.lspconfig')


--> THEMES AND STATUSLINE
require('themes.barbar_tabline')
require('themes.onedark')           --> gruvbox, onedark or sonokai
