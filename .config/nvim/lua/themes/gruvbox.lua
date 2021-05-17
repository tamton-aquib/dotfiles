local cmd = vim.api.nvim_command

vim.g.gruvbox_material_background = "medium"
vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_better_performance = 1

cmd('syntax on')
cmd('colorscheme gruvbox-material')

