local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        WhichKey = { fg = t.cyan },
        WhichKeyNormal = { link = "NormalFloat" },
        WhichKeyBorder = { link = "FloatBorder" },
        WhichKeyTitle = { link = "FloatTitle" },
        WhichKeyGroup = { fg = t.blue },
        WhichKeyDesc = { fg = t.pink },
        WhichKeySeperator = { fg = t.grey },
        WhichKeyFloat = { bg = t.bg },
        WhichKeyValue = { fg = t.blue },

        WhichKeyIcon = { fg = t.blue },
        WhichKeyIconAzure = { fg = util.blend(t.cyan, t.fg, 0.3) },
        WhichKeyIconBlue = { fg = t.blue },
        WhickKeyIconCyan = { fg = t.cyan },
        WhichKeyIconGreen = { fg = t.green },
        WhichKeyIconGrey = { fg = t.grey },
        WhichKeyIconOrange = { fg = t.orange },
        WhichKeyIconPurple = { fg = t.purple },
        WhichKeyIconRed = { fg = t.red },
        WhichKeyIconYellow = { fg = t.yellow },
    }

    return highlights
end
return M
