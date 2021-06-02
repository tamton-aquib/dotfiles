--> staline setup

require'staline'.setup{
	defaults = {
		cool_symbol = " ",
		left_separator = " ",
		right_separator = " ",
-- 		left_separator = " ",
-- 		right_separator = " ",
	},
	mode_colors = {
		n = "#e27d60"
	}
}

require'staline'.tabline_init()
-- local leftSeparator = ""	-->      
-- local rightSeparator = ""	-->      

