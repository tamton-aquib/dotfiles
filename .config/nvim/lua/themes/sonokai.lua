
local cmd = vim.api.nvim_command

vim.g.monokai_style = 'andromeda'
vim.g.sonokai_enable_italic = 1

cmd('syntax on')
cmd('colorscheme sonokai')

if vim.fn.has('termguicolors') then
    cmd('hi LineNr ctermbg=NONE guibg=NONE')
	cmd('hi Normal ctermbg=NONE guibg=NONE')
end


