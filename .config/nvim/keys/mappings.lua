vim.g.mapleader = ' '

local mapp = vim.api.nvim_set_keymap
local cmd = vim.api.nvim_command
local nnoremap_silent = {noremap=true, silent=true}

--> Custom
mapp('i', 'jk', '<Esc>', nnoremap_silent)
mapp('n', '<leader>a','ggVG',nnoremap_silent)
mapp('n', '<leader>f', ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', nnoremap_silent)
mapp('n', '<leader>w', 'Iconsole.log(<Esc>A);<Esc>', nnoremap_silent)
mapp('n', '<leader>\'', 'ciw""<Esc>P', nnoremap_silent)
mapp('n', '<C-c>', ':w<CR>:!live_server<CR>', nnoremap_silent)
mapp('i', '<C-k>', "<cmd>lua return require'snippets'.expand_or_advance(1)<CR>", nnoremap_silent)


cmd('au FileType python set foldmethod=indent')
cmd('au FileType vim set fdm=marker')

--> Running Files
cmd('au Filetype vim nnoremap <silent> <buffer> <leader>r :so %<CR>')
cmd('au Filetype rust nnoremap <buffer> <leader>r :w<CR>:FloatermNew rustc % && ./%:t:r && rm ./%:t:r<CR>')
cmd('au Filetype java nnoremap <buffer> <leader>r :w<CR>:FloatermNew javac % && java %:t:r && rm ./*.class<CR>')
cmd('au FileType c nnoremap <buffer> <leader>r :w<CR>:FloatermNew gcc -o thenga % && ./thenga && rm ./thenga<CR>')
cmd('au FileType javascript nnoremap <buffer> <leader>r :w<CR>:FloatermNew node %<CR>')
cmd('au Filetype python nnoremap <buffer> <leader>r :w<CR>:FloatermNew python %<CR>')
cmd('au FileType sh nnoremap <buffer> <leader>r :w<CR>:FloatermNew ./%<CR>')

--> Floaterm Mappings
mapp('n','<leader>t', ':FloatermNew --autoclose=2<Cr>', nnoremap_silent)
mapp('n','<leader>p', ':FloatermNew --autoclose=2 python<Cr>', nnoremap_silent)
mapp('n','<leader>l', ':LazyGit<Cr>', nnoremap_silent)

--> WINDOW Control
mapp('n', '<C-h>','<C-w>h', nnoremap_silent)
mapp('n', '<C-j>','<C-w>j', nnoremap_silent)
mapp('n', '<C-k>','<C-w>k', nnoremap_silent)
mapp('n', '<C-l>','<C-w>l', nnoremap_silent)
mapp('n', '<M-h>', ':vertical resize +2<CR>', nnoremap_silent)
mapp('n', '<M-j>', ':resize -2<CR>', nnoremap_silent)
mapp('n', '<M-k>', ':resize +2<CR>', nnoremap_silent)
mapp('n', '<M-l>', ':vertical resize -2<CR>', nnoremap_silent)

--> OLD
mapp('i', '<C-u>', '<Esc>viwUi', nnoremap_silent)
mapp('n', '<C-u>', 'viwU', nnoremap_silent)
mapp('n', '<TAB>', ':bnext<CR>', nnoremap_silent) 
mapp('n', '<S-TAB>', ':bprevious<CR>', nnoremap_silent)
mapp('n', '<C-s>', ':w', nnoremap_silent)
mapp('n', '<C-q>', ':q', nnoremap_silent)
mapp('c', 'W', 'w', nnoremap_silent)
mapp('c', 'Q', 'q', nnoremap_silent)
mapp('v', '<', '<gv', nnoremap_silent)
mapp('v', '>', '>gv', nnoremap_silent)
mapp('i', '<C-j>', '("\\<C-n>")', {noremap=true, expr=true})
mapp('i', '<C-k>', '("\\<C-p>")', {noremap=true, expr=true})
mapp('i', '<TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {noremap=true, expr=true})
