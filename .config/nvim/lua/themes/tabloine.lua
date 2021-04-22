
M = {}

local tab_color = "#986fec"
local number_table = {"❶", "❷", "❸", "❹", "❺", "❻", "❼", "❽", "❾", "❿"}
-- ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓

vim.cmd('hi TabNoice guifg=black guibg='..tab_color)
vim.cmd('hi TabArrow guifg='..tab_color)

function M.MyTabline()
	local buff_number = vim.api.nvim_get_current_buf()
	local filename = vim.api.nvim_call_function('expand', {'%:t'})

	local strfmt = "%%#TabNoice# %s %s %%#TabArrow#"

	local noice = string.format(strfmt, number_table[buff_number], filename)

	return noice
end

return M
