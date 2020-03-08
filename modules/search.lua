-- 搜索
local hotkey = require "hs.hotkey"

local hotkeys = require("config").hotkeys
local hyperShift = hotkeys.hyperShift

hotkey.bind(
    hyperShift,
    "space",
    "搜索",
    function()
        spoon.HSearch:toggleShow()
    end
)
