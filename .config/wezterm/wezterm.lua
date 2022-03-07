local wez = require("wezterm")

return {
	-- colorscheme = "OceanicMaterial",
	-- allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",
	window_padding = {
		left=0, right=0, top=0, bottom=0
	},
	colors = {
		tab_bar = {
			active_tab = {
				bg_color = "#11121d",
				fg_color = "#986fec",
				intensity = "Normal"
			}
		},
		background = "#11121d",
		foreground = "#a9b1d6",
		ansi = {"#32344a", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#ad8ee6", "#449dab", "#787c99"},
		bright = {"#32344a", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#ad8ee6", "#449dab", "#787c99"},
		-- bright = { "#444b6a", "#ff7a93", "#b9f27c", "#ff9e64", "#7da6ff", "#bb9af7", "#0db9d7", "#acb0d0" }
	},

	-- default_prog = { "powershell.exe" },
	-- default_prog = { "wsl.exe ~" },
	default_prog = { "arch" },

	-- font = wez.font("Cascadia Code PL"),
	font = wez.font_with_fallback( {
		-- {"MonoLisa", weight="Bold"},
		"Cascadia Code PL",
		{family="JetBrains Mono", weight="Medium" },
		{family="FiraCode NF", weight="Regular" },
	}),

	hide_tab_bar_if_only_one_tab = true,
	window_background_opacity = 0.9,

	font_size = 11.0,
	line_height = 1.05,

	-- window_decorations = "RESIZE",

	initial_cols = 110,
	initial_rows = 30,

	audible_bell = "Disabled",
	force_reverse_video_cursor = true
}
