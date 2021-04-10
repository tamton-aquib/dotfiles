vim.g.mapleader = ' '

local mapp = vim.api.nvim_set_keymap
local cmd = vim.api.nvim_command
local noresilent = {noremap=true, silent=true}

--> New
mapp('t', 'jk', '<C-\\><C-n>', noresilent)
mapp('v', '<F9>', 'y:FloatermNew --autoclose=2<CR>python -c "<C-\\><C-n>pi"<CR><C-\\><C-n>6j', noresilent)

--> Custom
local noice = [[:lua require('telescope.builtin').find_files(require'telescope.themes'.get_dropdown({previewer=false, winblend=50,width=0.3 }))<CR>]]
mapp('n', '<leader>f', noice, noresilent)
mapp('i', 'jk', '<Esc>', noresilent)
mapp('n', '<leader>a','ggVG',noresilent)
mapp('n', '<leader>w', 'Iconsole.log(<Esc>A);<Esc>', noresilent)
mapp('n', '<leader>\'', 'ciw""<Esc>P', noresilent)
mapp('n', '<C-c>', ':w<CR>:!live_server<CR>', noresilent)
mapp('i', '<C-k>', "<cmd>lua return require'snippets'.expand_or_advance(1)<CR>", noresilent)


cmd('au FileType python set foldmethod=indent')
cmd('au FileType vim set fdm=marker')

--> Running Files
cmd('au Filetype vim nnoremap <silent> <leader>r :so %<CR>')
cmd('au Filetype rust nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew rustc % && ./%:t:r && rm ./%:t:r<CR>')
cmd('au Filetype java nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew javac % && java %:t:r && rm ./*.class<CR>')
cmd('au FileType c nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew gcc -o thenga % && ./thenga && rm ./thenga<CR>')
cmd('au FileType javascript nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew node %<CR>')
cmd('au Filetype python nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew python %<CR>')
cmd('au FileType sh nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew ./%<CR>')

--> Floaterm Mappings
mapp('n','<leader>t', ':FloatermNew --autoclose=2<Cr>', noresilent)
mapp('n','<leader>p', ':FloatermNew --autoclose=2 python<Cr>', noresilent)
mapp('n','<leader>l', ':LazyGit<Cr>', noresilent)

--> WINDOW Control
mapp('n', '<C-h>','<C-w>h', noresilent)
mapp('n', '<C-j>','<C-w>j', noresilent)
mapp('n', '<C-k>','<C-w>k', noresilent)
mapp('n', '<C-l>','<C-w>l', noresilent)
mapp('n', '<M-h>', ':vertical resize +2<CR>', noresilent)
mapp('n', '<M-j>', ':resize -2<CR>', noresilent)
mapp('n', '<M-k>', ':resize +2<CR>', noresilent)
mapp('n', '<M-l>', ':vertical resize -2<CR>', noresilent)

--> OLD
mapp('i', '<C-u>', '<Esc>viwUi', noresilent)
mapp('n', '<C-u>', 'viwU', noresilent)
mapp('n', '<TAB>', ':bnext<CR>', noresilent) 
mapp('n', '<S-TAB>', ':bprevious<CR>', noresilent)
mapp('n', '<C-s>', ':w<CR>', noresilent)
mapp('n', '<C-q>', ':q<CR>', noresilent)
mapp('c', 'W', 'w', noresilent)
mapp('c', 'Q', 'q', noresilent)
mapp('v', '<', '<gv', noresilent)
mapp('v', '>', '>gv', noresilent)
mapp('i', '<C-j>', '("\\<C-n>")', {noremap=true, expr=true})
mapp('i', '<C-k>', '("\\<C-p>")', {noremap=true, expr=true})
mapp('i', '<TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {noremap=true, expr=true})
