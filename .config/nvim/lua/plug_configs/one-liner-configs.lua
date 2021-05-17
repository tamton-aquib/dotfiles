
--> Bracey
vim.g.bracey_refresh_on_save = 1

--> Markdown preview
vim.g.mkdp_refresh_slow = 1
vim.g.python_host_prog = '/usr/bin/python3'

--> TO-DO and lsp-icons
require'todo-comments'.setup{}
require'lspkind'.init({with_text=false})

--> Nvim-Autopairs
require 'nvim-autopairs'.setup{}

