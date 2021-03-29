"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'norcalli/snippets.nvim'

    Plug 'AndrewRadev/discotheque.vim'
    Plug 'srcery-colors/srcery-vim'
    " Tab line
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'romgrk/barbar.nvim'
    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    " Startify for proj management
    Plug 'mhinz/vim-startify'
    " Native LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    " Live server for web-dev
    Plug 'turbio/bracey.vim'
    " markdown-preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Lazygit
    Plug 'kdheepak/lazygit.nvim'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " html auto-close tags
    Plug 'alvan/vim-closetag'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
