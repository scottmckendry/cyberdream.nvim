local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        WhichKey = { fg = t.cyan },
        WhichKeyGroup = { fg = t.blue },
        WhichKeyDesc = { fg = t.pink },
        WhichKeySeperator = { fg = t.bg },
        WhichKeyFloat = { bg = t.bg },
        WhichKeyValue = { fg = t.blue },
    }

    return highlights
end
return M
