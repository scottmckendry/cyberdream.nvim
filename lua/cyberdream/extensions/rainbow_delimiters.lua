local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        RainbowDelimiterRed = { fg = t.red },
        RainbowDelimiterOrange = { fg = t.orange },
        RainbowDelimiterYellow = { fg = t.yellow },
        RainbowDelimiterGreen = { fg = t.green },
        RainbowDelimiterBlue = { fg = t.blue },
        RainbowDelimiterViolet = { fg = t.purple },
        RainbowDelimiterCyan = { fg = t.cyan },
    }

    return highlights
end
return M
