
local mapp = vim.api.nvim_set_keymap
-- require'snippets'.use_suggested_mappings()
local html_bp = [[
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>${1:TITLE}</title>
    <link type="text/css" rel="stylesheet" href="style.css">
</head>

<body>
    ${0}

    <script type="application/javascript" src="noice.js"></script>
</body>

</html>
]]

local shebang = [[
#!/usr/bin/env python3
]]

require'snippets'.snippets = {
	_global = {
		html = html_bp;
		["#!"] = shebang;
	}
}
