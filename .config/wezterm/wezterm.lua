local wez = require("wezterm")

return {
	-- allow_square_glyphs_to_overflow_width = "WhenFollowedBySpace",
	enable_wayland = false,

    --> FONT
	font = wez.font_with_fallback( {
        { family = "IosevkaTerm Nerd Font", weight = 600 },
        -- { family = "Liga SFMono Nerd Font", weight = 600 },
        -- { family = "MonoLisa", weight = 500 },
		-- { family = "JetBrainsMono Nerd Font", weight = 650 },
        { family = "icomoon" },
        -- { family = "OperatorMono Nerd Font", weight="Bold" },
        { family = "Dank Mono" },
        { family = "Operator Mono Lig", weight = "Regular"},
		{ family = "FiraCode NF", weight = "Regular" },
	}),
    -- bold_brightens_ansi_colors = true,
	font_size = 10.5,
    -- dpi = 120.0,
	-- line_height = 1.12, -- monolisa
	line_height = 1.25,
	-- cell_width = 0.99,

	initial_cols = 200,
	initial_rows = 31,

    --> WINDOW and TABBAR
	window_padding = { left=10, right=0, top=10, bottom=0 },
	-- window_background_opacity = 0.8,
    enable_tab_bar = false,
    -- hide_tab_bar_if_only_one_tab = true,
	-- window_decorations = "RESIZE",

	window_background_gradient = {
		colors = { '#32302f', '#1d2021' },
		-- Specifices a Linear gradient starting in the top left corner.
		orientation = { Linear = { angle = -45.0 } },
	},


    --> COLORS
	colors = {
		tab_bar = {
			active_tab = {
				bg_color = "#11121d",
				fg_color = "#986fec",
				intensity = "Normal"
			}
		},
		-- background = "#11121d",
		-- background = "#282828",

		foreground = "#a9b1d6",
		ansi = {"#32344a", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#ad8ee6", "#449dab", "#787c99"},
		brights = {"#32344a", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#ad8ee6", "#449dab", "#787c99"},
        -- ansi = { "#444b6a", "#ff7a93", "#b9f27c", "#ff9e64", "#7da6ff", "#bb9af7", "#0db9d7", "#acb0d0" },
        -- bright = { "#444b6a", "#ff7a93", "#b9f27c", "#ff9e64", "#7da6ff", "#bb9af7", "#0db9d7", "#acb0d0" },
	},


	audible_bell = "Disabled",
	force_reverse_video_cursor = true,
    -- webgpu_preferred_adapter = wez.gui.enumerate_gpus()[1],
    -- front_end = "WebGpu",
}
