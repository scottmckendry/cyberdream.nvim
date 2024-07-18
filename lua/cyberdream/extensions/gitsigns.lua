local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        GitSignsAdd = { fg = t.green },
        GitSignsChange = { fg = t.orange },
        GitSignsDelete = { fg = t.red },
    }

    return highlights
end
return M
