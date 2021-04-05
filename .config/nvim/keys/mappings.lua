vim.g.leader = " "
local mapp = vim.api.nvim_set_keymap
local nnoremap_silent = {noremap=true, silent=true}

--> Custom
mapp('i', 'jk', '<Esc>', nnoremap_silent)
mapp('n', '<leader>a','ggVG',nnoremap_silent)
mapp('n', '<leader>f', ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', nnoremap_silent)
mapp('n', '<leader>w', 'Iconsole.log(<Esc>A);<Esc>', nnoremap_silent)
mapp('n', '<leader>\'', 'ciw""<Esc>P', nnoremap_silent)
mapp('n', '<C-c>', ':w<CR>:!live_server<CR>', nnoremap_silent)

--> Floaterm Mappings
mapp('n','<leader>t', ':FloatermNew --autoclose=2<Cr>', nnoremap_silent)
mapp('n','<leader>p', ':FloatermNew --autoclose=2 python<Cr>', nnoremap_silent)
mapp('n','<leader>l', ':LazyGit<Cr>', nnoremap_silent)

--> WINDOW Control
mapp('n', '<C-h>','<C-w>h',nnoremap_silent)
mapp('n', '<C-j>','<C-w>j',nnoremap_silent)
mapp('n', '<C-k>','<C-w>k',nnoremap_silent)
mapp('n', '<C-l>','<C-w>l',nnoremap_silent)
mapp('n', '<M-h>', ':vertical resize +2<CR>', nnoremap_silent)
mapp('n', '<M-j>', ':resize -2<CR>', nnoremap_silent)
mapp('n', '<M-k>', ':resize +2<CR>', nnoremap_silent)
mapp('n', '<M-l>', ':vertical resize -2<CR>', nnoremap_silent)

--> OLD
mapp('i', '<C-u>', '<Esc>viwUi',nnoremap_silent)
mapp('n', '<C-u>', 'viwU',nnoremap_silent)
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
