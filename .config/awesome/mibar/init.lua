---@diagnostic disable: undefined-global
local wibox = require("wibox")
local gears = require("gears")
local awful = require("awful")
local beautiful = require("beautiful")

local k = require("constants")

local wifi = require("mibar.wifi")
local datetime = require("mibar.datetime")
local power = require("mibar.power")

local modkey = k.modkey

-- local mylauncher = awful.widget.launcher({ image = beautiful.awesome_icon, menu = mymainmenu })
-- local mylauncher = wibox.widget {
    -- button = awful.button(k),
    -- text = '  ',
    -- widget = wibox.widget.textbox,
    -- widget=wibox.widget.textbox("  ")
-- }
-- mylauncher:buttons(awful.button({ }, 1, function(t)
        -- -- t:view_only()
    -- -- require("naughty").notify({text="Called the button!"})
    -- local p = awful.popup({
        -- -- ontop = true,
        -- visible = false,
        -- shape = gears.shape.rounded_bar,
        -- widget = wibox.widget {
            -- text="Noice",
            -- widget = wibox.widget.textbox
        -- }
    -- })

    -- if p.visible then
        -- p.visible = not p.visible
    -- else
        -- p:move_next_to(mouse.current_widget_geometry)
    -- end
-- end))

local taglist_buttons = gears.table.join(
    awful.button({ }, 1, function(t) t:view_only() end),
    awful.button({ modkey }, 1, function(t)
        if client.focus then
            client.focus:move_to_tag(t)
        end
    end),
    awful.button({ }, 3, awful.tag.viewtoggle),
    awful.button({ modkey }, 3, function(t) if client.focus then client.focus:toggle_tag(t) end end),
    awful.button({ }, 4, function(t) awful.tag.viewnext(t.screen) end),
    awful.button({ }, 5, function(t) awful.tag.viewprev(t.screen) end)
)

local space = function()
    return wibox.container.background(wibox.container.margin(wibox.widget {
        -- widget = wibox.widget.textbox,
        -- text = '',
        wibox.widget.textbox('')
    }, 5, 20, 0, 0), nil)
end

local function set_wallpaper(s)
    beautiful.wallpaper = "/home/taj/Pictures/Wallpapers/astro_car.jpg"
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, true)
    end
end

-- Re-set wallpaper when a screen's geometry changes (e.g. different resolution)
screen.connect_signal("property::geometry", set_wallpaper)

awful.screen.connect_for_each_screen(function(s)
    set_wallpaper(s)

    -- Each screen has its own tag table.
    awful.tag({ "  ", "  ", " 嗢 ", "  ", "  " }, s, awful.layout.layouts[1])

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()

    -- Create an imagebox widget which will contain an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)

    s.mylayoutbox:buttons(gears.table.join(
        awful.button({ }, 1, function () awful.layout.inc( 1) end),
        awful.button({ }, 3, function () awful.layout.inc(-1) end),
        awful.button({ }, 4, function () awful.layout.inc( 1) end),
        awful.button({ }, 5, function () awful.layout.inc(-1) end)
    ))

    -- Create a taglist widget
    -- beautiful.taglist_font = k.font
    s.mytaglist = awful.widget.taglist {
        screen  = s,
        filter  = awful.widget.taglist.filter.all,
        buttons = taglist_buttons,
    }

    -- Create the wibox
    s.mywibox = awful.wibar({ position="top", screen=s, height=25, opacity=0.8, bg=k.bg, fg="#FFFFFF", border_width=5 })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        expand = 'none',
        { --> Left
            layout=wibox.layout.fixed.horizontal,
            space(),
            {
                -- mylauncher,
                power,
                fg = k.red,
                widget = wibox.widget.background
            },
            space(),
            {
                wibox.widget.textbox(" "),
                fg = k.red,
                widget = wibox.widget.background
            },
            datetime(),
            space(),
            s.mypromptbox,
        },
        { --> Mid widgets
            layout = wibox.layout.fixed.horizontal,
            s.mytaglist,
        },
        { --> Right
            layout = wibox.layout.fixed.horizontal,
            -- wibox.widget.systray(),
            wifi(),
            space(),
            s.mylayoutbox,
        },
    }
end)
