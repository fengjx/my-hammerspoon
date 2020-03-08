
local hotkey = require "hs.hotkey"
local hotkeys = require("config").hotkeys
local hyper = hotkeys.hyper
local hyperShift = hotkeys.hyperShift
local hmgr = hotkeys.hmgr

if spoon.KSheet then

    local mgrId = "cheatsheetM"
    spoon.ModalMgr:new(mgrId)
    local cmodal = spoon.ModalMgr.modal_list[mgrId]
    cmodal:bind('', 'escape', '退出', function()
        spoon.KSheet:hide()
        spoon.ModalMgr:deactivate({mgrId})
    end)
    cmodal:bind('', 'Q', '退出', function()
        spoon.KSheet:hide()
        spoon.ModalMgr:deactivate({mgrId})
    end)

    hotkey.bind(
        hmgr,
        "S",
        "显示当前App快捷键",
        function()
            spoon.KSheet:show()
            spoon.ModalMgr:deactivateAll()
            spoon.ModalMgr:activate({mgrId})
        end
    )
end

