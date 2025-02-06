local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        SnacksNormal = { link = "NormalFloat" },
        SnacksWinBar = { link = "Title" },
        SnacksBackdrop = { fg = "NONE", bg = "NONE" },
        SnacksNormalNC = { link = "NormalFloat" },
        SnacksWinBarNC = { link = "SnacksWinBar" },

        SnacksNotifierDebug = { fg = t.fg },
        SnacksNotifierBorderDebug = { fg = t.bg_highlight },
        SnacksNotifierIconDebug = { fg = t.grey },
        SnacksNotifierTitleDebug = { fg = t.grey },

        SnacksNotifierError = { link = "SnacksNotifierDebug" },
        SnacksNotifierBorderError = { link = "SnacksNotifierBorderDebug" },
        SnacksNotifierIconError = { fg = t.red },
        SnacksNotifierTitleError = { fg = t.red },

        SnacksNotifierInfo = { link = "SnacksNotifierDebug" },
        SnacksNotifierBorderInfo = { link = "SnacksNotifierBorderDebug" },
        SnacksNotifierIconInfo = { fg = t.blue },
        SnacksNotifierTitleInfo = { fg = t.blue },

        SnacksNotifierTrace = { link = "SnacksNotifierDebug" },
        SnacksNotifierBorderTrace = { link = "SnacksNotifierBorderDebug" },
        SnacksNotifierIconTrace = { fg = t.purple },
        SnacksNotifierTitleTrace = { fg = t.purple },

        SnacksNotifierWarn = { link = "SnacksNotifierDebug" },
        SnacksNotifierBorderWarn = { link = "SnacksNotifierBorderDebug" },
        SnacksNotifierIconWarn = { fg = t.yellow },
        SnacksNotifierTitleWarn = { fg = t.yellow },

        SnacksDashboardNormal = { link = "SnacksNormal" },
        SnacksDashboardDesc = { fg = t.cyan },
        SnacksDashboardFile = { fg = t.cyan },
        SnacksDashboardDir = { fg = t.grey },
        SnacksDashoardFooter = { fg = t.cyan },
        SnacksDashboardHeader = { fg = util.blend(t.purple, t.fg, 0.3) },
        SnacksDashboardIcon = { fg = t.blue },
        SnacksDashboardKey = { fg = t.orange },
        SnacksDashboardTerminal = { link = "SnacksNormal" },
        SnacksDashboardSpecial = { link = "Special" },
        SnacksDashboardTitle = { link = "Title" },
    }

    return highlights
end

return M
