local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
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
