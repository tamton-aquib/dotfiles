
local cmd = vim.api.nvim_command

vim.g.onedark_hide_endofbuffer = 1
vim.g.onedark_terminal_italics = 1
vim.g.onedark_termcolors = 256

cmd('syntax on')
cmd('colorscheme onedark')

if vim.fn.has('termguicolors') then
	cmd('hi LineNr ctermbg=NONE guibg=NONE')
	cmd('hi Normal ctermbg=NONE guibg=NONE')
end

--[[ if (has("autocmd") && !has("gui_running"))
    augroup colorset
      autocmd!
      let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
      autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
    augroup END
endif

 ]]
