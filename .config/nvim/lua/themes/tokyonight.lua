
local cmd = vim.api.nvim_command

vim.g.tokyonight_style = 'night'
vim.g.tokyonight_enable_italic = 1
vim.g.tokyonight_transparent_background = 1

cmd('syntax on')
cmd('colorscheme tokyonight')
