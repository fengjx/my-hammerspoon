-- App快捷启动
local hotkeys = require("config").hotkeys
local hmgr = hotkeys.hmgr

local hotkey = require "hs.hotkey"
local window = require "hs.window"
local application = require "hs.application"

local key2App = {
    g = "Google Chrome",
    s = "System Preferences",
    t = "iTerm",
    y = "网易有道词典",
    k = "KeeWeb",
    f = "Finder",
    r = "rdm"
}

local appM = "appM"
spoon.ModalMgr:new(appM)
local cmodal = spoon.ModalMgr.modal_list[appM]

function bindKey()
    cmodal:bind(
        "",
        "escape",
        "退出",
        function()
            spoon.ModalMgr:deactivate({appM})
        end
    )
    cmodal:bind(
        "",
        "Q",
        "退出",
        function()
            spoon.ModalMgr:deactivate({appM})
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
    for key, app in pairs(key2App) do
        -- hotkey.bind(hyper, key, function()
        --     --application.launchOrFocus(app)
        --     toggle_application(app)
        -- end)
        cmodal:bind(
            "",
            key,
            app,
            function()
                toggle_application(app)
            end
        )
    end
    -- 激活
    hotkey.bind(
        hmgr,
        "A",
        "快捷启动App",
        function()
            spoon.ModalMgr:deactivateAll()
            -- Show the keybindings cheatsheet once appM is activated
            spoon.ModalMgr:activate({appM}, "#FFBD2E", true)
        end
    )
end

-- Toggle an application between being the frontmost app, and being hidden
function toggle_application(_app)
    -- finds a running applications
    local app = application.find(_app)

    if not app then
        -- application not running, launch app
        application.launchOrFocus(_app)
        spoon.ModalMgr:deactivate({appM})
        return
    end

    -- application running, toggle hide/unhide
    local mainwin = app:mainWindow()
    if mainwin then
        if true == app:isFrontmost() then
            mainwin:application():hide()
        else
            mainwin:application():activate(true)
            mainwin:application():unhide()
            mainwin:focus()
        end
    else
        -- no windows, maybe hide
        if true == app:hide() then
            -- focus app
            application.launchOrFocus(_app)
        else
            -- nothing to do
        end
    end
    spoon.ModalMgr:deactivate({appM})
end

bindKey()
