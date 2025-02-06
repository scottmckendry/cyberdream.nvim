local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        HopNextKey = { fg = t.magenta, bg = util.blend(t.bg_solid, t.magenta, 0.85), bold = true },
        HopNextKey1 = { fg = t.cyan, bg = util.blend(t.bg_solid, t.cyan, 0.85), bold = true },
        HopNextKey2 = {
            fg = util.blend(t.cyan, t.bg_solid, 0.7),
            bg = util.blend(t.bg_solid, t.cyan, 0.9),
            bold = true,
        },
        HopUnmatched = { fg = t.bg_highlight },
        HopPreview = { fg = t.fg, bg = t.bg_highlight },
    }
    return highlights
end
return M
