local cmd = vim.api.nvim_command
local M = {}

local Job = require'plenary.job'

-- local leftSeparator = ""	-->    
local leftSeparator = " "  -- 
-- local rightSeparator = ""	-->    
local rightSeparator = " "  --  
local cool_symbol = " "

local green     = "#2bbb4f"	--> "#6ed57e"
local red		= "#986fec"
local blue      = "#4799eb"	--> "#03353e"
local yellow    = "#fff94c"	--> "#ffd55b"
local black     = "#000000"
local violet	= "#e27d60"
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
     typescript		= ' ' ,
     python			= ' ' ,
     html			= ' ' ,
     css			= ' ' ,
     javascript		= ' ' ,
     jsx			= ' ' ,
     markdown       = ' ' ,
     sh				= ' ',
     vim			= ' ',
     rust			= ' ',
     cpp            = ' ',
     c              = ' ',
     go             = ' ',
     lua            = ' ',
     conf           = ' ',
	 txt	        = ' '
}

local modes = {
     ['n']   = ' ',
     ['v']   = ' ',
     ['V']   = ' ',
     ['i']   = ' ',
     ['ic']  = '',
     ['c']   = ' ',
     ['r']   = 'Prompt',
     ['t']   = 'T',
     ['R']   = ' ',
     ['^V']  = ' '
}

function ifNotFound (t, d)
  local mt = {__index = function () return d end}
  setmetatable(t, mt)
end

function call_highlights(modeColor)
    cmd('hi Noice guibg='..modeColor..' guifg=#000000')
    cmd('hi Arrow guifg='..modeColor..' guibg='..lightGrey)
	cmd('hi MidArrow guifg='..lightGrey)
	cmd('hi BranchName guifg='..modeColor)
end

local noice_color = "#97ce6b"

function call_colors()
	vim.cmd("hi TabLineSel guibg="..noice_color)
end

-- function os.capture(cmd, raw)
--   local f = assert(io.popen(cmd, 'r'))
--   local s = assert(f:read('*a'))
--   f:close()
--   if raw then return s end
--   s = string.gsub(s, '^%s+', '')
--   s = string.gsub(s, '%s+$', '')
--   s = string.gsub(s, '[\n\r]+', ' ')
--   return s
-- end

-- local branch = os.capture('git describe --contains --all HEAD')

local branch = Job:new({
	command = 'git',
	args = { 'describe', '--contains', '--all', 'HEAD' },
	on_stdout = function(j, return_val)
	return return_val
  end,
}):sync()[1]

branch = branch and ' '..branch or ""

function M.get_tabline()
	local res = ""
	call_colors()

	for i in ipairs(vim.api.nvim_list_bufs()) do
 		--local filename = vim.api.nvim_buf_get_name(noice):match("^.+/(.+)$")
		local filename = vim.fn.expand('%:t')

		if i == vim.api.nvim_get_current_buf() then 
			res = res.."%#TabLineSel#" 
		else
			res = res.."%#TabLine#"
		end
		-- if vim.bo.modified then edited = " " else edited = " " end
		local edited = vim.bo.modified and "  " or " "
		if filename == nil then filename = "Noice" end
		res = res .. " " .. filename .." "..edited .. "%#TabLineFill#"
	end
	return res
end


function M.get_statusline()
	local mode = vim.api.nvim_get_mode()['mode']
	local extension = vim.bo.ft

	ifNotFound(modes, ' ')
	ifNotFound(getFileIcon, ' ')
	ifNotFound(getModeColor, red)

    local modeIcon	= modes[mode]
    local modeColor = getModeColor[mode]
	local fileIcon	= getFileIcon[extension]

	local s = '%#Noice#  '..modeIcon..' %#Arrow#'..leftSeparator
	s = s..'%#MidArrow#'..leftSeparator
	s = s.." %#BranchName#"..branch.. ' %M'.. "%#MidArrow#"

    s = s..'%='

    s = s..rightSeparator..'%#Arrow#'..rightSeparator..'%#Noice# '
    s = s..fileIcon..'  [%l/%L] :%c 並%p%% '.. cool_symbol ..' '

	call_highlights(modeColor)

	return s
end

return M
