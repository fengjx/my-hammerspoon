local hotkey = require "hs.hotkey"

local hotkeys = require("config").hotkeys
local hyper = hotkeys.hyper
local hyperShift = hotkeys.hyperShift
local hyperCmd = hotkeys.hyperCmd
local hmgr = hotkeys.hmgr


-- First we need to connect to aria2 rpc host
local aria2_host = "http://192.168.1.110:6800/jsonrpc"
local aria2_secret = "1024"
spoon.HSaria2:connectToHost(aria2_host, aria2_secret)

hotkey.bind(
    hyper,
    "D",
    "打开aria2客户端",
    function()
        spoon.HSaria2:togglePanel()
    end
)