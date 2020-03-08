local _M = {}

hs.hotkey.alertDuration = 0
hs.hints.showTitleThresh = 0
hs.window.animationDuration = 0
hs.logger.defaultLogLevel = 'info'

hs.loadSpoon("ModalMgr")

local hspoon_list = {
    "WinWin",
    "HSearch",
    "Keychain",
    "HSaria2",
    "BingDaily",
    "KSheet",
    "HSKeybindings"
}

-- Load those Spoons
for _, v in pairs(hspoon_list) do
    hs.loadSpoon(v)
end


_M.hotkeys = {
    hmgr = {"alt"},
    hyper = {'ctrl', 'alt'},
    hyperShift = {'ctrl', 'shift'},
    hyperCmd = {'ctrl', 'cmd'}
}


return _M




