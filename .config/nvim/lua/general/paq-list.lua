vim.cmd 'packadd paq-nvim'         -- Load package
local paq = require'paq-nvim'.paq  -- Import module and bind `paq` function
paq{'savq/paq-nvim', opt=true}     -- Let Paq manage itself

paq 'tamago324/lir.nvim'
--> paq 'tamton-aquib/staline.nvim'
paq 'voldikss/vim-floaterm'
paq 'nvim-treesitter/playground'
paq 'folke/todo-comments.nvim'
paq {'challenger-deep-theme/vim', as = 'challenger-deep' }

--> Themes and looks
paq 'kyazdani42/nvim-web-devicons'
paq 'joshdick/onedark.vim'
paq 'sainnhe/sonokai'
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
paq 'windwp/nvim-autopairs'
paq 'nvim-treesitter/nvim-treesitter'
