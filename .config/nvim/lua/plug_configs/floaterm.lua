
local map = vim.api.nvim_buf_set_keymap
local exp = vim.fn.expand
local this = vim.api.nvim_get_current_buf()
local noice = {noremap=true, silent=true}
open_term = require'toggleterm.terminal'.Terminal

require("toggleterm").setup {
  hide_numbers = true,
  start_in_insert = true,
  direction = 'float',
  close_on_exit = false,
  float_opts = {
    border = 'single',
    winblend = 5,
  }
}

local files = {
	python	= "python "..exp('%:t'),
	c		= "gcc -o noice "..exp('%:t').."&& ./noice && rm ./noice",
	java	= "javac "..exp('%:t').." && java "..exp('%:t:r').." && rm *.class",
	rust	= "cargo run"
}

function run_file()
	local command = files[vim.bo.filetype]
	open_term:new{cmd=command}:toggle()
end

map(this, 'n', '<leader>r', [[:lua run_file()<CR>]], noice)
map(this, 'n', '<leader>l', [[:lua open_term:new{cmd="lazygit"}:toggle()<CR>]], noice)
map(this, 'n', '<leader>p', [[:lua open_term:new{cmd="python"}:toggle()<CR>]], noice)
map(this, 'n', '<leader>t', [[:lua open_term:new():toggle()<CR>]], noice)

