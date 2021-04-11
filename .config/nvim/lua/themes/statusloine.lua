local cmd = vim.api.nvim_command

local M = {}

local leftSeparator = ""
local rightSeparator = ""

local green  = "#2bbb4f"	--> "#6ed57e"
local violet = "#986fec"
local blue   = "#4799eb"	--> "#03353e"
local yellow = "#fff94c"	--> "#ffd55b"
local black  = "#000000"
local red    = "#e27d60"

local getColor = {
     ['n']    =  violet,
     ['v']    =  blue,
     ['V']    =  blue,
     ['i']    =  green,
     ['ic']   =  green,
     ['c']    =  red,
     ['t']    =  yellow,
     ['r']    =  yellow,
     ['R']    =  yellow
}

local getFileIcon = {
     ts       = ' ' ,
     py       = ' ' ,
     html     = ' ' ,
     css      = ' ' ,
     js       = ' ' ,
     jsx      = ' ' ,
     md       = ' ' ,
     sh       = ' ',
     vim      = ' ',
     rs       = ' ',
     cpp      = ' ',
     c        = ' ',
     go       = ' ',
     lua      = ' ',
     conf     = ' ',
}

local modes = {
     ['n']   = ' ',
     ['v']   = ' ',
     ['V']   = ' ',
     ['i']   = ' ',
     ['ic']  = '',
     ['c']   = ' ',
     ['r']   = 'Prompt',
     ['t']   = 'T',
     ['R']   = ' ',
     ['^V']  = ' '
     -- [!]       = ' ',
     -- ["<C-v>"]  = ' ',
}

function setDefault (t, d)
  local mt = {__index = function () return d end}
  setmetatable(t, mt)
end

function M.get_statusline()
	local mode = vim.api.nvim_get_mode()['mode']
	local extension = vim.api.nvim_call_function('expand', {'%:e'})

	setDefault(modes, ' ')
	setDefault(getFileIcon, ' ')
	setDefault(getColor, red)

    local modeIcon	= modes[mode]
    local modeColor = getColor[mode]
	local fileIcon	= getFileIcon[extension]

	local s = '%#Noice#  '..modeIcon..' %#Arrow#'..leftSeparator..' %M'

    s = s..'%='

    s = s..'%#Arrow#'..rightSeparator..'%#Noice# '
    s = s..fileIcon..'  [%l/%L] :%c 並%p%%  '

    cmd('hi Noice guibg='..modeColor..' guifg=#000000')
    cmd('hi Arrow guifg='..modeColor)
	return s
end

return M
