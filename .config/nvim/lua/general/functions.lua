local cmd = vim.api.nvim_command
local mapp = vim.api.nvim_set_keymap

-- let s:comment_map = { 
--     \   "c": '\/\/',
--     \   "java": '\/\/',
--     \   "javascript": '\/\/',
--     \   "php": '\/\/',
--     \   "python": '#',
--     \   "sh": '#',
--     \   "vim": '"',
--     \   "rust": '\/\/',
--     \   "lua": '--',
-- 	\	"conf": '#'
--     \ }

-- function! ToggleComment()
--     if has_key(s:comment_map, &filetype)
--         let comment_leader = s:comment_map[&filetype]
--         if getline('.') =~ "^\\s*" . comment_leader . " " 
--             Uncomment the line
--             execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
--         else 
--             if getline('.') =~ "^\\s*" . comment_leader
--                 Uncomment the line
--                 execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
--             else
--                 Comment the line
--                 execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
--             end
--         end
--     else
--         echo "No comment leader found for filetype"
--     end
-- endfunction

-- function toggle_comment()
--     local extension = vim.api.nvim_call_function('expand', {'%:e'})
--     -- local comment_leader = comment_map[extension]
-- 
--     local comment_leader = "-"
--     local line = vim.api.nvim_get_current_line()
-- 
--     local _, starting, _, _ = unpack(vim.fn.getpos("'<"))
--     local _, ending, _, _ = unpack(vim.fn.getpos("'>"))
-- 
--     local pattern = ""
--     local hoe = string.find(line, "^"..comment_leader)
--     print(hoe)
-- 
--     if (string.find(line, "^"..comment_leader) ~= nil)
--         then
--         if (starting ~= 0) then
--             pattern = ':'..starting..','..ending..'s/^'..comment_leader..'//g'
--         else
--             pattern = ':.s/^'..comment_leader..'//g'
--         end
--     else
--         if (starting ~= 0) then
--             pattern = ':'..starting..','..ending..'s/^/'..comment_leader..'/g'
--         else
--             pattern = ':.s/^/'..comment_leader..'/g'
--         end
--     end
-- end

-- mapp('v', '<C-_>', ':lua toggle_comment()<CR>', {noremap=true})
-- mapp('n', '<C-_>', ':lua toggle_comment()<CR>', {noremap=true})


local is_tranparent = 1
function toggle_transparent()
	if (is_tranparent == 0)
		then
        cmd('hi Normal guibg=NONE ctermbg=NONE')
		is_tranparent = 1
	else
        vim.o.background = "dark"
		is_tranparent = 0
	end
end

mapp('n', '<C-t>', ':lua toggle_transparent()<CR>', {noremap=true})
