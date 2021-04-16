vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'numtostr/FTerm.nvim'

--> Themes and looks
paq 'kyazdani42/nvim-web-devicons'
paq 'romgrk/barbar.nvim'
paq 'joshdick/onedark.vim'
paq 'morhetz/gruvbox'
paq 'sainnhe/sonokai'
paq 'crusoexia/vim-monokai'
paq 'liuchengxu/space-vim-dark'
paq 'patstockwell/vim-monokai-tasty'
paq 'GustavoPrietoP/doom-one.vim'
paq 'dracula/vim'
paq 'glepnir/zephyr-nvim'
--> Web dev Utils
paq 'norcalli/snippets.nvim'
paq 'turbio/bracey.vim'
paq 'iamcco/markdown-preview.nvim'
--> Telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
--> LSP
paq 'neovim/nvim-lspconfig'
paq 'hrsh7th/nvim-compe'
paq 'kabouzeid/nvim-lspinstall'
--> General Purpose
paq 'mhinz/vim-startify'
paq 'norcalli/nvim-colorizer.lua'
paq 'kdheepak/lazygit.nvim'
paq 'alvan/vim-closetag'
paq 'windwp/nvim-autopairs'
paq 'nvim-treesitter/nvim-treesitter'
paq 'kyazdani42/nvim-tree.lua'
