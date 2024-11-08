local M = {}

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
        SnacksNotifierBorderDebug = { fg = t.bgHighlight },
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
    }

    return highlights
end

return M
