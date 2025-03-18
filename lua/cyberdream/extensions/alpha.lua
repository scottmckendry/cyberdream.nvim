local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        AlphaShortcut = { fg = t.orange },
        AlphaHeader = { fg = t.purple },
        AlphaHeaderLabel = { fg = t.orange },
        AlphaFooter = { fg = t.cyan },
        AlphaButtons = { fg = t.blue },
    }

    return highlights
end
return M
