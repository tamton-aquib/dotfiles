local cmd = vim.api.nvim_command



cmd("let bufferline = get(g:, 'bufferline', {})")

cmd("let g:bufferline.icon_separator_active = ''")
cmd("let g:bufferline.icon_close_tab_modified = ''")
