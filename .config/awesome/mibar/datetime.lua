local wibox = require("wibox")
local awful = require("awful")

local datetime_widget = {}
local old_cursor, old_wibox
-- local k = require("constants")

local function worker(user_args)
    user_args = user_args or {}
    local show_date = true

    datetime_widget = wibox.widget {
        format = "%I:%M %p",
        id = 'datetime',
        widget = wibox.widget.textclock,

        -- update_datime = function(self)
            -- self:get_children_by_id('datetime')[1]:set_text("noice")
        -- end,
    }

    datetime_widget:connect_signal("mouse::enter", function()
        local wb = mouse.current_wibox
        old_cursor, old_wibox = wb.cursor, wb
        wb.cursor = "hand1"
    end)
    datetime_widget:connect_signal("mouse::leave", function()
        if old_wibox then
            old_wibox.cursor = old_cursor
            old_wibox = nil
        end
    end)

    datetime_widget:buttons(awful.button({ }, 1, function ()
        datetime_widget:get_children_by_id('datetime')[1]:set_format(not show_date and "%I:%M %p" or "%a %d %b")
        show_date = not show_date
    end))

    return datetime_widget
end

return setmetatable(datetime_widget, { __call = function(_, ...) return worker(...) end })
