vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')
vim.cmd('set iskeyword+=-')
vim.cmd('syntax enable')
vim.cmd("filetype plugin indent on")
vim.cmd('set inccommand=split')

vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml,*.php,*.jsx'
vim.g.pep8_ignore = "E501,W601"

-- vim.o.formatoptions = "cro"

vim.o.statusline = '%!v:lua.stline.get_statusline()'
vim.o.tabline = '%!v:lua.tabloine.get_tabline()'
vim.o.mouse = "a"
vim.o.encoding = "UTF-8"
vim.o.fileencoding = "UTF-8"
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.hidden = true
vim.o.scrolloff = 8
vim.o.timeoutlen = 200
vim.o.updatetime = 500
vim.o.hlsearch = false
vim.o.clipboard = "unnamedplus"
vim.o.smarttab = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.foldenable = true
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
vim.o.foldlevelstart = 99
vim.o.shortmess = "c"
vim.o.foldmethod = "syntax"

vim.api.nvim_command('set tabstop=4')
vim.api.nvim_command('set shiftwidth=4')
vim.api.nvim_command('set softtabstop=4')
vim.api.nvim_command('set autoindent')

vim.bo.smartindent = true
vim.bo.expandtab = true           --> Not sure about this one

vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.wrap = false
vim.wo.signcolumn = "no"
vim.wo.cursorline = true
