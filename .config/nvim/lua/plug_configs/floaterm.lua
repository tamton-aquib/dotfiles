
local map = vim.api.nvim_buf_set_keymap
local exp = vim.fn.expand
-- local this = vim.api.nvim_get_current_buf
local noice = {noremap=true, silent=true}
open_term = require'toggleterm.terminal'.Terminal

require("toggleterm").setup{
	size = 20,
	hide_numbers = true, -- hide the number column in toggleterm buffers
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	direction = 'float',
	float_opts = {
		border = 'single',
		winblend = 5,
	}
}

local files = {
	python	= "python "..exp('%:t'),
	c		= "gcc -o noice "..exp('%:t').."&& ./noice && rm ./noice",
	java	= "javac "..exp('%:t').." && java "..exp('%:t:r').." && rm *.class",
	rust	= "cargo run",
}
map(vim.api.nvim_get_current_buf(), 'n', '<leader>l', [[:lua open_term:new{cmd="lazygit"}:toggle()<CR>]], noice)
map(vim.api.nvim_get_current_buf(), 'n', '<leader>p', [[:lua open_term:new{cmd="python"}:toggle()<CR>]], noice)
map(vim.api.nvim_get_current_buf(), 'n', '<leader>t', [[:lua open_term:new{}:toggle()<CR>]], noice)

function run_file()
	local command = files[vim.bo.filetype]
	open_term:new{cmd=command, close_on_exit=false}:toggle()
	print("Running: "..command)
end

map(vim.api.nvim_get_current_buf(), 'n', '<leader>r', [[:lua run_file()<CR>]], noice)

