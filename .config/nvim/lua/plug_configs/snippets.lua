ls = require'luasnip'
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, expr=true}
local parse = ls.parser.parse_snippet

local html_bp = [[
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
	<meta name="author" content="tamton-aquib">
    <title>${1:TITLE}</title>
    <link type="text/css" rel="stylesheet" href="${2:style.css}">
</head>

<body>
    ${0}

    <script src="${3:noice.js}"></script>
</body>

</html>
]]

local shebang = "#!/usr/bin/env python3\n"

local react_rfc = [[
import React from 'react';

function ${1:fName}(${2}) {
	return (
		${0}
	);
}

export default ${1}]]

ls.snippets = {
	all = {		
		parse({trig="html", wordTrig=true}, html_bp),
		parse({trig="#!", wordTrig=true}, shebang),
		parse({trig="rfc", wordTrig=true}, react_rfc),
	}
}

map('i','<Tab>', "luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'", opts)
map('i','<C-E>', "luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>'", opts)

