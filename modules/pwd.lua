local hotkey = require "hs.hotkey"

local hotkeys = require("config").hotkeys
local hyper = hotkeys.hyper
local hyperShift = hotkeys.hyperShift
local hyperCmd = hotkeys.hyperCmd
local hmgr = hotkeys.hmgr

local mgrId = "pwdM"
spoon.ModalMgr:new(mgrId)
local cmodal = spoon.ModalMgr.modal_list[mgrId]

cmodal:bind(
    "",
    "escape",
    "退出",
    function()
        spoon.ModalMgr:deactivate({mgrId})
    end
)
cmodal:bind(
    "",
    "Q",
    "退出",
    function()
        spoon.ModalMgr:deactivate({mgrId})
    end
)
cmodal:bind(
    "",
    "tab",
    "Toggle Cheatsheet",
    function()
        spoon.ModalMgr:toggleCheatsheet()
    end
)
cmodal:bind(
    "",
    "l",
    "登录",
    function()
        spoon.Keychain:login_keychain(mgrId)
    end
)

hotkey.bind(
    hmgr,
    "P",
    "密码管理器",
    function()
        spoon.ModalMgr:deactivateAll()
        -- Show the keybindings cheatsheet once appM is activated
        spoon.ModalMgr:activate({mgrId}, "#FFBD2E", true)
    end
)
