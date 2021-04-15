
local cmd = vim.api.nvim_command

vim.g.onedark_hide_endofbuffer = 1
vim.g.onedark_terminal_italics = 1
vim.g.onedark_termcolors = 256

cmd('syntax on')
cmd('colorscheme monokai')

if vim.fn.has('termguicolors') then
	cmd('hi LineNr ctermbg=NONE guibg=NONE')
	cmd('hi Normal ctermbg=NONE guibg=NONE')
end
