local watch = require("awful.widget.watch")
local wibox = require("wibox")

local net_speed_widget = {}

local function worker(user_args)

    local args = user_args or {}

    -- local interface = args.interface or '*'
    local interface = "wlp2s0"
    -- local timeout = args.timeout or 1
    local width = args.width or 100

    net_speed_widget = wibox.widget {
        layout = wibox.layout.fixed.horizontal,
        {
            id = 'wifi',
            forced_width = width,
            align = 'right',
            text='',
            widget = wibox.widget.textbox
        },
        set_wifi_text = function(self, new_rx_speed)
            self:get_children_by_id('wifi')[1]:set_text(tostring(new_rx_speed))
        end,
    }

    local update_widget = function(widget, stdout)
        widget:set_wifi_text(stdout and "  "..stdout or "")
    end

    watch(
        ([[bash -c "nmcli -t -f name connection show --active"]]):format(interface),
        5,
        update_widget,
        net_speed_widget
    )

    return net_speed_widget
end

return setmetatable(net_speed_widget, { __call = function(_, ...) return worker(...) end })
