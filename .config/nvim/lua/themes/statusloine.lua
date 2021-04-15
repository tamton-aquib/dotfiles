local cmd = vim.api.nvim_command
local M = {}

local leftSeparator = ""	-->    
local rightSeparator = ""	-->    
local arch_symbol = " "

local green     = "#2bbb4f"	--> "#6ed57e"
local violet    = "#986fec"
local blue      = "#4799eb"	--> "#03353e"
local yellow    = "#fff94c"	--> "#ffd55b"
local black     = "#000000"
local red       = "#e27d60"
local lightGrey = "#303030"

local getModeColor = {
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
	 txt	  = ' '
}

local modes = {
     ['n']   = ' ',
     ['v']   = ' ',
     ['V']   = ' ',
     ['i']   = ' ',
     ['ic']  = '',
     -- ['c']   = ' ',
     ['c']   = ' ',
     ['r']   = 'Prompt',
     ['t']   = 'T',
     ['R']   = ' ',
     ['^V']  = ' '
     -- [!]       = ' ',
     -- ["<C-v>"]  = ' ',
}

function ifNotFound (t, d)
  local mt = {__index = function () return d end}
  setmetatable(t, mt)
end

function M.get_statusline()
	local mode = vim.api.nvim_get_mode()['mode']
	local extension = vim.api.nvim_call_function('expand', {'%:e'})

	ifNotFound(modes, ' ')
	ifNotFound(getFileIcon, ' ')
	ifNotFound(getModeColor, red)

    local modeIcon	= modes[mode]
    local modeColor = getModeColor[mode]
	local fileIcon	= getFileIcon[extension]

	local s = '%#Noice#  '..modeIcon..' %#Arrow#'..leftSeparator
	s = s..'%#MidArrow#'..leftSeparator..' %M'

    s = s..'%='

    s = s..rightSeparator..'%#Arrow#'..rightSeparator..'%#Noice# '
    s = s..fileIcon..'  [%l/%L] :%c 並%p%% '.. arch_symbol ..' '

    cmd('hi Noice guibg='..modeColor..' guifg=#000000')
    cmd('hi Arrow guifg='..modeColor..' guibg='..lightGrey)
	cmd('hi MidArrow guifg='..lightGrey)
	return s
end

return M
