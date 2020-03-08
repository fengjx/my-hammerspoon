local hotkeys = require("config").hotkeys
local hyper = hotkeys.hyper
local hyperShift = hotkeys.hyperShift

hs.hotkey.bind(
    hyper,
    "H",
    "hello world",
    function()
        hs.alert.show("Hello World!")
    end
)

