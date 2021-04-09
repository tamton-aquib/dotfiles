
local cmd = vim.api.nvim_command

vim.g.monokai_style = 'andromeda'
vim.g.sonokai_enable_italic = 1

if vim.fn.has('termguicolors') then
    cmd('hi LineNr ctermbg=NONE guibg=NONE')
end

cmd('syntax on')
cmd('colorscheme sonokai')

