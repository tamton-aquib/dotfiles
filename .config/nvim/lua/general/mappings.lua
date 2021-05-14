vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local cmd = vim.api.nvim_command
local noresilent = {noremap=true, silent=true}

--> New
map('t', 'jk', '<C-\\><C-n>', noresilent)
map('i', '>>', '><Esc>?<[a-z]<CR>lyiwo</<C-r>"><Esc>O', noresilent)
map('n', '<leader>n', ":lua require'lir.float'.toggle()<CR>", noresilent)
map('i',  '{<CR>',  '{<CR>}<Esc>O', noresilent)
map('v', '<F9>', 'y:FloatermNew --autoclose=2<CR>python -c "<C-\\><C-n>pi"<CR><C-\\><C-n>6j', noresilent)

--> Custom
local noice = [[:lua require('telescope.builtin').find_files(require'telescope.themes'.get_dropdown({previewer=false, winblend=50,width=0.5 }))<CR>]]
map('n', '<leader>f', noice, noresilent)
map('i', 'jk', '<Esc>', noresilent)
map('n', '<leader>a','ggVG',noresilent)
map('n', '<leader>w', 'Iconsole.log(<Esc>A);<Esc>', noresilent)
map('n', '<leader>\'', 'ciw""<Esc>P', noresilent)
map('n', '<C-c>', ':w<CR>:silent !live_server<CR>', noresilent)

--> Running Files
cmd('au Filetype lua nnoremap <silent> <leader>r :luafile %<CR>')
cmd('au Filetype rust nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew rustc % && ./%:t:r && rm ./%:t:r<CR>')
cmd('au Filetype java nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew javac % && java %:t:r && rm ./*.class<CR>')
cmd('au FileType c nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew gcc -o thenga % && ./thenga && rm ./thenga<CR>')
cmd('au FileType javascript nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew node %<CR>')
cmd('au Filetype python nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew python %<CR>')
cmd('au FileType sh nnoremap <buffer> <silent> <leader>r :w<CR>:FloatermNew ./%<CR>')

--> Floaterm Mappings
map('n','<leader>t', ':FloatermNew --autoclose=2<Cr>', noresilent)
map('n','<leader>p', ':FloatermNew --autoclose=2 python<Cr>', noresilent)
map('n','<leader>l', ':FloatermNew --autoclose=2 lazygit<Cr>', noresilent)

--> WINDOW Control
map('n', '<C-h>','<C-w>h', noresilent)
map('n', '<C-j>','<C-w>j', noresilent)
map('n', '<C-k>','<C-w>k', noresilent)
map('n', '<C-l>','<C-w>l', noresilent)
map('n', '<M-h>', ':vertical resize +2<CR>', noresilent)
map('n', '<M-j>', ':resize -2<CR>', noresilent)
map('n', '<M-k>', ':resize +2<CR>', noresilent)
map('n', '<M-l>', ':vertical resize -2<CR>', noresilent)

--> OLD
map('i', '<C-u>', '<Esc>viwUi', noresilent)
map('n', '<C-u>', 'viwU', noresilent)
map('n', '<TAB>', ':bnext<CR>', noresilent) 
map('n', '<S-TAB>', ':bprevious<CR>', noresilent)
map('n', '<C-s>', ':w<CR>', noresilent)
map('n', '<C-q>', ':q<CR>', noresilent)
map('c', 'W', 'w', noresilent)
map('c', 'Q', 'q', noresilent)
map('v', '<', '<gv', noresilent)
map('v', '>', '>gv', noresilent)
map('i', '<TAB>', 'pumvisible() ? "\\<C-n>" : "\\<TAB>"', {noremap=true, expr=true})
map("i", "<C-k>", [[<cmd>lua return require'snippets'.expand_or_advance(1)<CR>]], {noremap=true})
