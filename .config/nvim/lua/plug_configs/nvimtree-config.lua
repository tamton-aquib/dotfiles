vim.g.nvim_tree_width = 25 
vim.g.nvim_tree_ignore = { '.git', 'node_modules', '.cache' }
vim.g.nvim_tree_auto_open = 1 
vim.g.nvim_tree_auto_close = 1 
vim.g.nvim_tree_auto_ignore_ft = { 'startify' }
vim.g.nvim_tree_quit_on_open = 1 
vim.g.nvim_tree_follow = 1 
vim.g.nvim_tree_indent_markers = 1 
vim.g.nvim_tree_git_hl = 1 
vim.g.nvim_tree_width_allow_resize  = 1 
vim.g.nvim_tree_group_empty = 1 
vim.g.nvim_tree_lsp_diagnostics = 1 

vim.g.nvim_tree_icons = {
		default		  =  '',
		symlink		  =  '',
		git			  =  {
			unstaged	  =  "✗",
			staged		  =  "✓",
			unmerged	  =  "",
			renamed		  =  "➜",
			untracked	  =  "★",
			deleted		  =  "",
			ignored		  =  "◌"
		},
		 folder  =  {
		   default  =  "",
		   open  =  "",
		   empty  =  "",
		   empty_open  =  "",
		   symlink  =  "",
		   symlink_open  =  "",
		}
}
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
  ["o"]              = tree_cb("edit"),
  ["<2-LeftMouse>"]  = tree_cb("edit"),
  ["<C-v>"]          = tree_cb("vsplit"),
  ["<C-x>"]          = tree_cb("split"),
  ["za"]			= tree_cb("close_node"),
  ["I"]              = tree_cb("toggle_ignored"),
  ["H"]              = tree_cb("toggle_dotfiles"),
  ["a"]              = tree_cb("create"),
  ["dd"]              = tree_cb("remove"),
  ["cw"]          = tree_cb("full_rename"),
  ["x"]              = tree_cb("cut"),
  ["p"]              = tree_cb("paste"),
  ["-"]              = tree_cb("dir_up"),
}
