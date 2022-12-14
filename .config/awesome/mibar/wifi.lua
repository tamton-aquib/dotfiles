local watch = require("awful.widget.watch")
local wibox = require("wibox")
local awful = require("awful")

local wifi_widget = {}
local old_cursor, old_wibox
-- local k=require("constants")

local function worker(user_args)

    user_args = user_args or {}
    local interface = "wlp2s0"

    wifi_widget = wibox.widget {
        layout = wibox.layout.fixed.horizontal,
        {
            id = 'wifi',
            align = 'right',
            text=' 睊 ',
            widget=wibox.widget.textbox
        },
        set_wifi_text = function(self, wifi_name)
            self:get_children_by_id('wifi')[1]:set_text(wifi_name)
        end,
    }

    local update_widget = function(widget, stdout)
        widget:set_wifi_text(stdout and "  "..stdout or " 睊 ")
    end

    watch(
        ([[bash -c "nmcli -t -f name connection show --active"]]):format(interface),
        5,
        update_widget,
        wifi_widget
    )

    wifi_widget:connect_signal("mouse::enter", function()
        local wb = mouse.current_wibox
        old_cursor, old_wibox = wb.cursor, wb
        wb.cursor = "hand1"
    end)
    wifi_widget:connect_signal("mouse::leave", function()
        if old_wibox then
            old_wibox.cursor = old_cursor
            old_wibox = nil
        end
    end)
    wifi_widget:buttons(
        awful.button({}, 1, function()
            awful.spawn("wifi")
        end)
    )

    return wifi_widget
end

return setmetatable(wifi_widget, { __call = function(_, ...) return worker(...) end })
