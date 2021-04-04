if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif

source $HOME/.config/nvim/vim-plug/plugins.vim

luafile $HOME/.config/nvim/lua/plug-colorizer.lua
luafile $HOME/.config/nvim/lua/snipppets.lua
luafile $HOME/.config/nvim/lua/telescope-config.lua

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/general/functions.vim
source $HOME/.config/nvim/keys/mappings.vim
luafile $HOME/.config/nvim/keys/mappings.lua

" LSP
source $HOME/.config/nvim/plug-config/lspconfig.vim
luafile $HOME/.config/nvim/plug-config/compe-config.lua
luafile $HOME/.config/nvim/lua/lsp/python-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/css-lsp.lua
luafile $HOME/.config/nvim/lua/lsp/rust-lsp.lua

source $HOME/.config/nvim/plug-config/floaterm.vim
source $HOME/.config/nvim/statusloine.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
source $HOME/.config/nvim/plug-config/start-screen.vim
source $HOME/.config/nvim/plug-config/bracey.vim

inoremap <c-k> <cmd>lua return require'snippets'.expand_or_advance(1)<CR>
colo gruvbox
let g:gruvbox_contrast_dark = 'hard'
