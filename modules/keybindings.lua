-- 显示快捷键
local hotkey = require "hs.hotkey"
local hotkeys = require("config").hotkeys
local hmgr = hotkeys.hmgr

if spoon.HSKeybindings then
    local mgrId = "keybindingsM"
    spoon.ModalMgr:new(mgrId)
    local cmodal = spoon.ModalMgr.modal_list[mgrId]
    cmodal:bind(
        "",
        "escape",
        "退出",
        function()
            spoon.HSKeybindings:hide()
            spoon.ModalMgr:deactivate({mgrId})
        end
    )
    cmodal:bind(
        "",
        "Q",
        "退出",
        function()
            spoon.HSKeybindings:hide()
            spoon.ModalMgr:deactivate({mgrId})
        end
    )

    hotkey.bind(
        hmgr,
        "K",
        "显示绑定快捷键",
        function()
            spoon.HSKeybindings:show()
            spoon.ModalMgr:deactivateAll()
            spoon.ModalMgr:activate({mgrId})
        end
    )
end
