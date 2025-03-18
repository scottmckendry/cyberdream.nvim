local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        HeirlineInactive = { bg = t.grey },
        HeirlineNormal = { bg = t.blue },
        HeirlineVisual = { bg = t.magenta },
        HeirlineReplace = { bg = t.red },
        HeirlineCommand = { bg = t.yellow },
        HeirlineInsert = { bg = t.green },
        HeirlineTerminal = { bg = t.cyan },
    }

    return highlights
end
return M
