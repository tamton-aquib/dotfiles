vim.g.leader = " "

--> Temp
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap=true})
vim.api.nvim_set_keymap('n', '<C-a>','ggVG',{noremap=true})

vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>', {noremap=true})

vim.api.nvim_set_keymap('n', '<leader>w', 'Iconsole.log(<Esc>A);<Esc>', {noremap=true})
vim.api.nvim_set_keymap('n', '<leader>\'', 'ciw""<Esc>P', {noremap=true})

vim.api.nvim_set_keymap('c', 'W', 'w', {noremap=true})
vim.api.nvim_set_keymap('c', 'Q', 'q', {noremap=true})

vim.api.nvim_set_keymap('v', '<', '<gv', {noremap=true})
vim.api.nvim_set_keymap('v', '>', '>gv', {noremap=true})

--> Floaterm Mappings
vim.api.nvim_set_keymap('n','<leader>t', ':FloatermNew --autoclose=2<Cr>', {noremap=true})
vim.api.nvim_set_keymap('n','<leader>p', ':FloatermNew --autoclose=2 python<Cr>', {noremap=true})
vim.api.nvim_set_keymap('n','<leader>l', ':LazyGit<Cr>', {noremap=true})


--> WINDOW Control
vim.api.nvim_set_keymap('n', '<C-h>','<C-w>h',{noremap=true})
vim.api.nvim_set_keymap('n', '<C-j>','<C-w>j',{noremap=true})
vim.api.nvim_set_keymap('n', '<C-k>','<C-w>k',{noremap=true})
vim.api.nvim_set_keymap('n', '<C-l>','<C-w>l',{noremap=true})
vim.api.nvim_set_keymap('n', '<M-h>', ':vertical resize +2<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<M-j>', ':resize -2<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<M-k>', ':resize +2<CR>', {noremap=true})
vim.api.nvim_set_keymap('n', '<M-l>', ':vertical resize -2<CR>', {noremap=true})

--> OLD
vim.api.nvim_set_keymap('i', '<C-u>', '<Esc>viwUi',{noremap=true})
vim.api.nvim_set_keymap('n', '<C-u>', 'viwU',{noremap=true})

vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', {noremap=true}) 
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap=true})

vim.api.nvim_set_keymap('n', '<C-s>', ':w', {noremap=true})
vim.api.nvim_set_keymap('n', '<C-q>', ':q', {noremap=true})
