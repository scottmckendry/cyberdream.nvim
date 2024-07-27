local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        TreeSitterContext = { bg = util.blend(t.bgAlt, t.cyan, 0.9) },
        TreeSitterContextLineNumber = { fg = util.blend(t.bgHighlight, t.fg) },
    }
    return highlights
end
return M
