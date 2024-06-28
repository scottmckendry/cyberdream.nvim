local util = require("cyberdream.util")
local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(_, t)
    local highlights = {
        -- Mini Files
        MiniFilesBorder = { fg = t.bgHighlight },
        MiniFilesBorderModified = { fg = t.pink },
        MiniFilesCursorLine = { bg = util.blend(t.bgHighlight, t.bgAlt, 0.3) },
        MiniFilesDirectory = { fg = t.blue },
        MiniFilesTitle = { fg = util.blend(t.bgHighlight, t.cyan, 0.7) },
        MiniFilesTitleFocused = { fg = t.cyan },
    }

    return highlights
end
return M
