local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        TroubleCode = { fg = t.magenta },
        TroubleCount = { bg = t.bg_highlight, bold = true },
        TroubleDirectory = { fg = t.grey, bold = true },
        TroubleFilename = { fg = t.cyan },
        TroubleIconArray = { fg = t.pink },
        TroubleIconBoolean = { link = "Boolean" },
        TroubleIconConstant = { link = "Constant" },
        TroubleIconDirectory = { fg = t.blue },
        TroubleIconEvent = { link = "Special" },
        TroubleIconField = { link = "Boolean" },
        TroubleIconFile = { link = "Normal" },
        TroubleIconFunction = { link = "@function" },
        TroubleIndent = { link = "LineNr" },
        TroubleIndentFoldClosed = { link = "CursorLineNr" },
        TroublePos = { link = "LineNr" },
        TroublePreview = { link = "Visual" },
        TroubleSource = { link = "Comment" },
    }

    return highlights
end
return M
