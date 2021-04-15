
local cmd = vim.api.nvim_command

cmd('syntax on')
cmd('colorscheme dracula')

if vim.fn.has('termguicolors') then
    cmd('hi LineNr ctermbg=NONE guibg=NONE')
	cmd('hi Normal ctermbg=NONE guibg=NONE')
end
