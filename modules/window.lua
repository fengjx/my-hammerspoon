-- 窗口管理
local hotkey = require "hs.hotkey"

local hotkeys = require("config").hotkeys
local hyper = hotkeys.hyper
local hyperShift = hotkeys.hyperShift
local hyperCmd = hotkeys.hyperCmd
local hmgr = hotkeys.hmgr

-- 最小化
hotkey.bind(
    hyperCmd,
    "0",
    "窗口最小化",
    function()
        spoon.WinWin:moveAndResize("minimize")
    end
)
-- 最大化
hotkey.bind(
    hyperCmd,
    "9",
    "窗口最大化",
    function()
        spoon.WinWin:moveAndResize("maximize")
    end
)

-- 居中
hotkey.bind(
    hyper,
    "C",
    "窗口居中",
    function()
        spoon.WinWin:moveAndResize("center")
    end
)

-- 右下角
hotkey.bind(
    hyperCmd,
    "O",
    "窗口移动到右下角",
    function()
        spoon.WinWin:moveAndResize("cornerSE")
    end
)
-- 右上角
hotkey.bind(
    hyperCmd,
    "P",
    "窗口移动到右上角",
    function()
        spoon.WinWin:moveAndResize("cornerNE")
    end
)
-- 左上角
hotkey.bind(
    hyperCmd,
    "Y",
    "窗口移动到左上角",
    function()
        spoon.WinWin:moveAndResize("cornerNW")
    end
)
-- 左下角
hotkey.bind(
    hyperCmd,
    "U",
    "窗口移动到左下角",
    function()
        spoon.WinWin:moveAndResize("cornerSW")
    end
)

-- 窗口左边50
hotkey.bind(
    hyperCmd,
    "J",
    "窗口左边50%分屏",
    function()
        spoon.WinWin:moveAndResize("halfleft")
    end
)
-- 窗口右边50%分屏
hotkey.bind(
    hyperCmd,
    "L",
    "窗口右边50%分屏",
    function()
        spoon.WinWin:moveAndResize("halfright")
    end
)
-- "窗口上边50%分屏",
hotkey.bind(
    hyperCmd,
    "I",
    "窗口上边50%分屏",
    function()
        spoon.WinWin:moveAndResize("halfup")
    end
)
-- "窗口下边50%分屏",
hotkey.bind(
    hyperCmd,
    "K",
    "窗口下边50%分屏",
    function()
        spoon.WinWin:moveAndResize("halfdown")
    end
)

-- 窗口向左边移动
hotkey.bind(
    hyper,
    "J",
    "窗口向左移动",
    function()
        spoon.WinWin:stepMove("left")
    end
)
-- 窗口向右边移动
hotkey.bind(
    hyper,
    "L",
    "窗口向右移动",
    function()
        spoon.WinWin:stepMove("right")
    end
)
-- 窗口向上移动
hotkey.bind(
    hyper,
    "I",
    "窗口向上移动",
    function()
        spoon.WinWin:stepMove("up")
    end
)
-- 窗口向下移动
hotkey.bind(
    hyper,
    "K",
    "窗口向下移动",
    function()
        spoon.WinWin:stepMove("down")
    end
)

-- 扩大窗口
hotkey.bind(
    hyperCmd,
    "=",
    "扩大窗口",
    function()
        spoon.WinWin:moveAndResize("expand")
    end
)
-- 缩小窗口
hotkey.bind(
    hyperCmd,
    "-",
    "缩小窗口",
    function()
        spoon.WinWin:moveAndResize("shrink")
    end
)

-- 移动到左边显示器
hotkey.bind(
    hyperCmd,
    "[",
    "移动到左边显示器",
    function()
        spoon.WinWin:moveToScreen("left")
    end
)
-- 移动到右边显示器
hotkey.bind(
    hyperCmd,
    "]",
    "移动到右边显示器",
    function()
        spoon.WinWin:moveToScreen("right")
    end
)
-- 移动到右边显示器
hotkey.bind(
    hyperCmd,
    "\\",
    "移动到下个显示器",
    function()
        spoon.WinWin:moveToScreen("next")
    end
)
-- 切换窗口
hotkey.bind(
    hmgr,
    "tab",
    "切换窗口",
    function()
        hs.hints.windowHints()
    end
)