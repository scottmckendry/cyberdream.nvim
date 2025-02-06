local M = {}
local util = require("cyberdream.util")

--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        GrugFarHelpHeader = { link = "Comment" },
        GrugFarHelpHeaderKey = { fg = t.cyan, bold = true },
        GrugFarHelpWinHeader = { fg = t.blue, bold = true },
        GrugFarHelpWinActionPrefix = { fg = t.purple },
        GrugFarHelpWinActionText = { link = "Normal" },
        GrugFarHelpWinActionKey = { fg = t.cyan, bold = true },
        GrugFarHelpWinActionDescription = { link = "Comment" },

        GrugFarInputLabel = { fg = t.orange, bold = true },
        GrugFarInputPlaceholder = { fg = util.blend(t.bg_highlight, t.fg, 0.9), italic = true },

        GrugFarResultsHeader = { link = "Comment" },
        GrugFarResultsStats = { fg = t.yellow },
        GrugFarResultsActionMessage = { fg = t.bg_solid, bg = t.green, bold = true },

        GrugFarResultsMatch = { fg = t.cyan, bg = util.blend(t.bg_solid, t.cyan, 0.85), bold = true },
        GrugFarResultsChangeIndicator = { fg = t.cyan },
        GrugFarResultsPath = { fg = t.blue, bold = true, underline = true },
        GrugFarResultsRgCmdHeader = { link = "GrugFarResultsPath" },
        GrugFarResultsLineNo = { fg = t.pink, bold = true },
        GrugFarResultsLineColumn = { link = "GrugFarResultsLineNo" },
    }
    return highlights
end
return M
