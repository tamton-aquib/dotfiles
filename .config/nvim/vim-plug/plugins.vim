call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'tomasr/molokai'

	Plug 'oknozor/illumination'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'romgrk/barbar.nvim'
    " THEMES
    Plug 'joshdick/onedark.vim'
    Plug 'morhetz/gruvbox'
	Plug 'sainnhe/sonokai'

    " Telescope
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'

    " Native LSP
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
	Plug 'kabouzeid/nvim-lspinstall'

    Plug 'mhinz/vim-startify'						" --> Project management and start screen
    Plug 'norcalli/snippets.nvim'					" --> Snippet support (Lua)
    Plug 'AndrewRadev/discotheque.vim'				" --> No Idea why this is here but seems cool
    Plug 'norcalli/nvim-colorizer.lua'				" --> Color rendering
    Plug 'turbio/bracey.vim'						" --> Live server
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'kdheepak/lazygit.nvim'
    Plug 'voldikss/vim-floaterm'
    Plug 'alvan/vim-closetag'
    Plug 'jiangmiao/auto-pairs'
    Plug 'sheerun/vim-polyglot'						" --> Better syntax support
call plug#end()
