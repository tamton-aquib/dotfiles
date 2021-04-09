local cmd = vim.api.nvim_command

local M = {}

local leftSeparator = ""
local rightSeparator = ""


local green  = "#2bbb4f"
local violet = "#986fec"
local blue   = "#4799eb"
local yellow = "#fff94c"
local black  = "#000000"
local red    = "#e27d60"

local getColor = {
     ['n']    =  violet,
     ['v']    =  blue,
     ['V']    =  blue,
     ['i']    =  green,
     ['ic']   =  green,
     ['c']    =  yellow,
     ['t']    =  red,
     ['r']    =  red,
     ['R']    =  red
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

local moods = {
     ['n']   = ' ',
     ['v']   = ' ',
     ['V']   = ' ',
     ['i']   = ' ',
     ['ic']  = '',
     ['c']   = ' ',
     ['r']   = 'Prompt',
     ['t']   = 'T',
     ['R']   = ' ',
     ['\\<C-v>']  = ' '
     -- [!]       = ' ',
     -- ["<C-v>"]  = ' ',
}

local extension = vim.api.nvim_call_function('expand', {'%:e'})
local fileIcon = getFileIcon[extension]

if (fileIcon == nil)
    then
    fileIcon = ' '
end

function Highlight(mode)
    local modeColor = getColor[mode]
    cmd('hi Noice guibg='..modeColor..' guifg=#000000')
    cmd('hi Arrow guifg='..modeColor)
end

function M.get_statusline()

    local mode = vim.api.nvim_get_mode()['mode']

    if (moods[mode] == nil)
        then
        mode = 'n'
    end
    local modeIcon = moods[mode]

	local s = '%#Noice#  '..modeIcon..' %#Arrow#'..leftSeparator..' %M'

    s = s..'%='

    s = s..'%#Arrow#'..rightSeparator..'%#Noice# '
    s = s..fileIcon..'  [%l/%L] :%c 並%p%%  '

    Highlight(mode)
	return s
end

return M
