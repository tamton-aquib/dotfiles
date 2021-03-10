"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Live server bracey for html, css and js
    Plug 'turbio/bracey.vim'
    " Material Gruvbox
    Plug 'sainnhe/gruvbox-material'
    " markdown-preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Lazy git ma baby
    Plug 'kdheepak/lazygit.nvim'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Fuzzy Finder
    Plug 'junegunn/fzf.vim'
    " html auto-close tags
    Plug 'alvan/vim-closetag'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
