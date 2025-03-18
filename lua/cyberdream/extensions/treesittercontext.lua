local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        TreeSitterContext = { bg = util.blend(t.bg_alt, t.cyan, 0.9) },
        TreeSitterContextLineNumber = { fg = util.blend(t.bg_highlight, t.fg) },
    }
    return highlights
end
return M
