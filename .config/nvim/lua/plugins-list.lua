vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

--> Temp out
-- paq 'oknozor/illumination'
-- paq 'AndrewRadev/discotheque.vim'
-- paq 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

paq 'nvim-treesitter/nvim-treesitter'

--> Themes and looks
paq 'kyazdani42/nvim-web-devicons'
paq 'romgrk/barbar.nvim'
paq 'joshdick/onedark.vim'
paq 'morhetz/gruvbox'
paq 'sainnhe/sonokai'
--> Web dev Utils
paq 'norcalli/snippets.nvim'
paq 'turbio/bracey.vim'
--> Telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
--> LSP
paq 'neovim/nvim-lspconfig'
paq 'hrsh7th/nvim-compe'
paq 'kabouzeid/nvim-lspinstall'
--> General Purpose
paq 'b3nj5m1n/kommentary'
paq 'mhinz/vim-startify'
paq 'norcalli/nvim-colorizer.lua'
paq 'kdheepak/lazygit.nvim'
paq 'voldikss/vim-floaterm'
paq 'alvan/vim-closetag'
paq 'jiangmiao/auto-pairs'
-- paq 'sheerun/vim-polyglot'
