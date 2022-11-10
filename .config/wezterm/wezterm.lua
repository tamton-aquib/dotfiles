local wez = require("wezterm")

return {
	-- allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",

    --> FONT
	font = wez.font_with_fallback( {
		-- {family="MonoLisa Nerd Font", weight="Bold"},
        -- {family="Operator Mono Lig", weight="Regular"},
        {family="OperatorMonoLig Nerd Font", weight="Regular"},
        -- {family="icomoon"},
        -- {family="OperatorMono Nerd Font", weight="Bold"},
		{family="JetBrains Mono", weight="Regular" },
		{family="FiraCode NF", weight="Regular" },
	}),
    -- bold_brightens_ansi_colors = true,
	font_size = 12.0,
    -- dpi = 96.0,
	-- line_height = 1.00,

	initial_cols = 120,
	initial_rows = 28,

    --> WINDOW and TABBAR
	window_padding = {
		left=0, right=0, top=0, bottom=0
	},
	window_background_opacity = 0.7,
    enable_tab_bar = false,
    -- hide_tab_bar_if_only_one_tab = true,
	-- window_decorations = "RESIZE",

    --> COLORS
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
		brights = {"#32344a", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#ad8ee6", "#449dab", "#787c99"},
        -- ansi = { "#444b6a", "#ff7a93", "#b9f27c", "#ff9e64", "#7da6ff", "#bb9af7", "#0db9d7", "#acb0d0" },
        -- bright = { "#444b6a", "#ff7a93", "#b9f27c", "#ff9e64", "#7da6ff", "#bb9af7", "#0db9d7", "#acb0d0" },
	},


	audible_bell = "Disabled",
	force_reverse_video_cursor = true
}
