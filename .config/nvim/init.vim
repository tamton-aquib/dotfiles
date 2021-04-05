source $HOME/.config/nvim/vim-plug/plugins.vim

" GENERAL SETTINGS AND MAPPINGS
luafile $HOME/.config/nvim/general/settings.lua
source $HOME/.config/nvim/general/functions.vim
luafile $HOME/.config/nvim/keys/mappings.lua

" LSP
luafile $HOME/.config/nvim/lua/lsp/python-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/css-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/rust-lsp.lua

" PLUG CONFIGS
luafile $HOME/.config/nvim/lua/plug-colorizer.lua
luafile $HOME/.config/nvim/lua/snipppets.lua
luafile $HOME/.config/nvim/lua/telescope-config.lua
luafile $HOME/.config/nvim/lua/compe-config.lua

source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/bracey.vim
source $HOME/.config/nvim/plug-config/lspconfig.vim

" THEMES
source $HOME/.config/nvim/themes/statusloine.vim
source $HOME/.config/nvim/themes/gruvbox.vim
" source $HOME/.config/nvim/themes/sonokai.vim
" source $HOME/.config/nvim/themes/molokai.vim
" source $HOME/.config/nvim/themes/onedark.vim
