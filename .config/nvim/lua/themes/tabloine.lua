
M = {}

local tab_color = "#986fec"
-- local number_table = {"❶", "❷", "❸", "❹", "❺", "❻", "❼", "❽", "❾", "❿"}
-- local number_table = {'①', '②', '③', '④', '⑤', '⑥', '⑦', '⑧', '⑨'}

vim.cmd('hi TabNoice guifg=black guibg='..tab_color)
vim.cmd('hi TabArrow guifg='..tab_color)

function M.MyTabline()
	local buff_number = vim.api.nvim_get_current_buf()
	if vim.bo.modified then modi = " " else modi = "" end
	local filename = vim.fn.expand("%:t")

	local strfmt = "%%#TabNoice# %s %s  %s %%#TabArrow#"
	local noice = string.format(strfmt, modi , filename, buff_number)

	return noice
end

return M
