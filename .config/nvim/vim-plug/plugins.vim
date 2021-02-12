"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Molokai theme
    Plug 'tomasr/molokai'
    " Fuzzy Finder
    Plug 'junegunn/fzf.vim'
    " primeagens vim game
    Plug 'ThePrimeagen/vim-be-good'
    " html auto-close tags
    Plug 'alvan/vim-closetag'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " One-dark Theme
    Plug 'joshdick/onedark.vim'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release0'}
    " Airline Status
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    " Colorizer
    Plug 'norcalli/nvim-colorizer.lua'
  
call plug#end()
