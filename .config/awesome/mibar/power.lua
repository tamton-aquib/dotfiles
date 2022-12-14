local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local k = require("constants")
local beautiful = require("beautiful")

local old_cursor, old_wibox
local menu_items = {
    { name = 'Poweroff', icon_name = '⭘ ', cmd = 'poweroff' },
    { name = 'Restart', icon_name = ' ', cmd = 'reboot' },
    { name = 'Sleep', icon_name = '鈴 ', cmd = 'sleep 3' },
}
local popup = awful.popup {
    ontop = true,
    visible = false, -- should be hidden when created
    shape=gears.shape.rounded_rect,
    border_width = 1,
    offset = { y = 5 },
    widget = {}
}
local rows = { layout = wibox.layout.fixed.vertical }
for _, item in ipairs(menu_items) do

    local row = wibox.widget {
        widget=wibox.widget.background,
        {
            widget=wibox.container.margin,
            margins=8,
            {
                layout = wibox.layout.fixed.horizontal,
                text = item.name,
                widget = wibox.widget.textbox,
                spacing = 10,
                {
                    font=k.font,
                    text=item.icon_name,
                    widget=wibox.widget.textbox,
                    fg=k.red
                },
                {
                    font=k.font,
                    text=item.name,
                    widget=wibox.widget.textbox
                },
            }
        },
    }
    row:connect_signal("mouse::enter", function(c)
        c:set_bg(k.bg)
    end)
    row:connect_signal("mouse::leave", function(c)
        c:set_bg(beautiful.bg_normal)
    end)
    row:buttons(
        awful.button({}, 1, function()
            popup.visible = not popup.visible
            awful.spawn(item.cmd)
        end)
    )

    table.insert(rows, row)
end
popup:setup(rows)

local bookmark_widget = wibox.widget {
    {
        text = " ",
        resize = true,
        widget = wibox.widget.textbox,
        font=k.font,
    },
    margins = 4,
    widget = wibox.container.margin
}

bookmark_widget:buttons(
    awful.util.table.join(
        awful.button({}, 1, function()
            if popup.visible then
                popup.visible = not popup.visible
            else
                popup:move_next_to(mouse.current_widget_geometry)
            end
        end)
    )
)

bookmark_widget:connect_signal("mouse::enter", function()
    local wb = mouse.current_wibox
    old_cursor, old_wibox = wb.cursor, wb
    wb.cursor = "hand1"
end)

bookmark_widget:connect_signal("mouse::leave", function()
    if old_wibox then
        old_wibox.cursor = old_cursor
        old_wibox = nil
    end
end)

return bookmark_widget
