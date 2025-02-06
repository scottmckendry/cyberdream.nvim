local util = require("cyberdream.util")
local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        IblIndent = { fg = util.blend(t.bg_highlight, t.bg_alt, 0.3) },
        IblScope = { fg = t.bg_highlight },
    }

    return highlights
end
return M
