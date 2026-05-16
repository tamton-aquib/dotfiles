local hl = hl

hl.env("XCURSOR_SIZE", "24")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct")

local terminal = "ghostty"
local file_manager = "dolphin"
--- local menu = "wofi --show drun"
local menu = "vicinae vicinae://launch/applications/"
local main_mod = "SUPER"

hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("hypridle")
end)

hl.monitor({ output = "", mode = "highres", position = "auto", scale = 1 })

hl.config({
    input = {
        kb_layout = "us",
        kb_variant = "",
        kb_model = "",
        kb_options = "",
        kb_rules = "",
        follow_mouse = 1,
        repeat_rate = 50,
        repeat_delay = 200,
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.3,
        },
    },
    xwayland = {
        force_zero_scaling = true,
    },
    general = {
        gaps_in = 5,
        gaps_out = 20,
        border_size = 0,
        ["col.active_border"] = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
        ["col.inactive_border"] = "rgba(595959aa)",
        layout = "dwindle",
        allow_tearing = false,
    },
    decoration = {
        rounding = 1,
        blur = {
            enabled = true,
            size = 3,
            passes = 1,
        },
    },
    animations = {
        enabled = true,
    },
    scrolling = {
        direction = "right"
    },
    dwindle = {
        preserve_split = true,
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
    },
})

hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

hl.curve("myBezier", {
    type = "bezier",
    points = { {0.05, 0.9}, {0.1, 1.05} },
})

hl.animation({ leaf = "windows", enabled = true, speed = 7, bezier = "myBezier" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 7, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 8, bezier = "default" })
hl.animation({ leaf = "fade", enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 6, bezier = "default" })

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

hl.device({
    name = "ite-tech.-inc.-ite-device(8176)-keyboard-1",
    sensitivity = -1.0,
})

hl.bind(main_mod .. " + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(main_mod .. " + W", hl.dsp.window.kill())
hl.bind(main_mod .. " + Q", hl.dsp.exit())
hl.bind(main_mod .. " + B", hl.dsp.exec_cmd("killall waybar; waybar"))
hl.bind(main_mod .. " + up", hl.dsp.exec_cmd("pamixer -i 5"))
hl.bind(main_mod .. " + down", hl.dsp.exec_cmd("pamixer -d 5"))
hl.bind(main_mod .. " + V", hl.dsp.exec_cmd("vicinae vicinae://launch/clipboard/history"))
hl.bind("ALT + TAB", hl.dsp.focus({ workspace = "previous" }))
hl.bind(main_mod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot --mode region --clipboard-only"))
hl.bind("SUPER + SHIFT + P", hl.dsp.send_shortcut({ mods = "SUPER", key = "F5", window = "class:^(com\\.obsproject\\.Studio)$" }))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
hl.bind(main_mod .. " + E", hl.dsp.exec_cmd(file_manager))
hl.bind(main_mod .. " + SPACE", hl.dsp.window.float({ action = "toggle" }))
hl.bind(main_mod .. " + R", hl.dsp.exec_cmd(menu))
hl.bind(main_mod .. " + P", hl.dsp.window.pseudo({ action = "toggle" }))
hl.bind(main_mod .. " + J", hl.dsp.focus({ direction = "l" }))
hl.bind(main_mod .. " + K", hl.dsp.focus({ direction = "r" }))
hl.bind(main_mod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(main_mod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(main_mod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(main_mod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(main_mod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(main_mod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(main_mod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(main_mod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(main_mod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(main_mod .. " + 0", hl.dsp.focus({ workspace = 10 }))
hl.bind(main_mod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(main_mod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(main_mod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(main_mod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(main_mod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(main_mod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(main_mod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(main_mod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(main_mod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(main_mod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))
hl.bind(main_mod .. " + S", hl.dsp.workspace.toggle_special("magic"))
hl.bind(main_mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))
hl.bind(main_mod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(main_mod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind(main_mod .. " + mouse:272", function() hl.dsp.window.move({}) end)
-- hl.bind(main_mod .. " + CTRL + right", hl.dsp.exec_cmd([[hyprctl dispatch '"resizeactive", 10, 0']]))
-- hl.bind(main_mod .. " + CTRL + left", hl.dsp.exec_cmd([[hyprctl dispatch '"resizeactive", -10, 0']]))
-- hl.bind(main_mod .. " + CTRL + up", hl.dsp.exec_cmd([[hyprctl dispatch '"resizeactive", 0, -10']]))
-- hl.bind(main_mod .. " + CTRL + down", hl.dsp.exec_cmd([[hyprctl dispatch '"resizeactive", 0, 10']]))

-- hl.bind(main_mod .. " + CTRL + right", hl.dsp.window.resize({ x = 10, y = 0, relative = true }))
-- hl.bind(main_mod .. " + CTRL + left", hl.dsp.window.resize({ x = -10, y = 0, relative = true }))
-- hl.bind(main_mod .. " + CTRL + up", hl.dsp.window.resize({ x = 0, y = -10, relative = true }))
-- hl.bind(main_mod .. " + CTRL + down", hl.dsp.window.resize({ x = 0, y = 10, relative = true }))
-- Resize
hl.bind(
    main_mod .. " + CTRL + L",
    hl.dsp.window.resize({ x = 10, y = 0, relative = true }, { description = "Decrease window size horizontal" }),
    { repeating = true }
)
hl.bind(
    main_mod .. " + CTRL + H",
    hl.dsp.window.resize({ x = -10, y = 0, relative = true }, { description = "Increase window size horizontal" }),
    { repeating = true }
)
hl.bind(
    main_mod .. " + CTRL + K",
    hl.dsp.window.resize({ x = 0, y = -10, relative = true }, { description = "Descrease window size vertical" }),
    { repeating = true }
)
hl.bind(
    main_mod .. " + CTRL + J",
    hl.dsp.window.resize({ x = 0, y = 10, relative = true }, { description = "Increase window size vertical" }),
    { repeating = true }
)
