local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        GitpadFloat = { link = "NormalFloat" },
        GitpadFloatBorder = { link = "FloatBorder" },
        GitpadFloatTitle = { fg = t.cyan, bold = true },
    }
    return highlights
end
return M
