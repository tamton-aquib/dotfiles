local cmd = vim.api.nvim_command

if vim.fn.has('termguicolors') then
    cmd('hi LineNr ctermbg=NONE guibg=NONE')
end

cmd('syntax on')
cmd('colorscheme gruvbox')
