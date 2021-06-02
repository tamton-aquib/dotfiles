vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'L3MON4D3/LuaSnip'

--> Themes and looks
paq {'tamton-aquib/staline.nvim', branch='beta'}
paq 'monsonjeremy/onedark.nvim'
paq 'sainnhe/sonokai'
paq 'sainnhe/gruvbox-material'
paq 'mhinz/vim-startify'
paq 'norcalli/nvim-colorizer.lua'
--> Web dev Utils
paq 'iamcco/markdown-preview.nvim'
paq 'mattn/emmet-vim'
--> Telescope
paq 'nvim-lua/popup.nvim'
paq 'nvim-lua/plenary.nvim'
paq 'nvim-telescope/telescope.nvim'
--> LSP
paq 'neovim/nvim-lspconfig'
paq 'hrsh7th/nvim-compe'
paq 'onsails/lspkind-nvim'
paq 'kabouzeid/nvim-lspinstall'
--> General Purpose
paq 'kyazdani42/nvim-web-devicons'
paq 'nvim-treesitter/nvim-treesitter'
paq 'folke/todo-comments.nvim'
paq 'voldikss/vim-floaterm'
paq 'nvim-treesitter/playground'
paq 'tamago324/lir.nvim'
paq 'steelsojka/pears.nvim'
