
--> GENERAL SETTINGS AND MAPPINGS
require('general.paq-list')
require('general.settings')
require('general.mappings')
require('general.functions')
require('lsps')

--> PLUG CONFIGS
require('plug_configs.plug-colorizer')
require('plug_configs.snipppets')
require('plug_configs.telescope-config')
require('plug_configs.compe-config')
require('plug_configs.bracey')
require('plug_configs.startify-config')
require('plug_configs.lspconfig')
require('plug_configs.treesittter')
require('nvim-autopairs').setup()
require('plug_configs.markdown-preview')

--> THEMES AND STATUSLINE
require('themes.tokyonight')           --> gruvbox, onedark, sonokai, doom-one
stline = require('themes.statusloine')
tabloine = require('themes.statusloine')
