local cmd = vim.api.nvim_command

cmd('set iskeyword+=-')
cmd('syntax enable')
-- cmd("filetype plugin indent on")
cmd('set inccommand=split')
cmd('set nomore')


vim.o.formatoptions = "cro"

vim.o.statusline = '%!v:lua.stline.get_statusline()'
vim.o.tabline = '%!v:lua.tabloine.get_tabline()'
vim.o.mouse = "a"
vim.o.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.hidden = true
vim.o.scrolloff = 8
vim.o.timeoutlen = 300
vim.o.updatetime = 500
vim.o.hlsearch = false
vim.o.clipboard = "unnamedplus"
vim.o.smarttab = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.conceallevel = 0
vim.o.cmdheight = 1
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.t_Co = "256"
vim.o.pumheight = 10
vim.o.incsearch = true
vim.o.showmode = false
vim.o.showtabline = 2
vim.o.laststatus = 2
vim.o.foldenable = true
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldlevelstart = 99

cmd('set ts=4')
cmd('set softtabstop=4')
cmd('set sw=4')
cmd('set autoindent')
vim.bo.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.signcolumn = "no"
vim.wo.cursorline = true

cmd('autocmd BufNewFile,BufRead * setlocal formatoptions-=cro')
