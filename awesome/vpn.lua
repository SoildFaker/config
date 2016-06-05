local wibox = require("wibox")
local awful = require("awful")
local helpers = require("./helpers")
local lain = require("lain")
markup = lain.util.markup
local widget = {}

-- {{{ Define subwidgets
widget.text = wibox.widget.textbox()
-- }}}

-- {{{ Update method
function widget:update()
    local test = io.popen("cat /sys/class/net/ppp0/dev_id")
    local linked = test:read() ~= nil
    test:close()
    if linked then
      widget.text:set_markup(markup("#00dd00","  VPN" ))
    else
      widget.text:set_markup(markup("#ffffff","  VPN" ))
    end
end
-- }}}

-- {{{ Listen if stage was changed
    helpers:listen(widget)
-- }}}

return widget;
