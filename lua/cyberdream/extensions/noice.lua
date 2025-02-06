local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        NoiceFormatProgressDone = { fg = t.bg_alt, bg = t.cyan },
        NoiceFormatProgressTodo = { fg = t.grey, bg = t.bg_highlight },
        NoiceLspProgressClient = { fg = t.blue },
        NoiceLspProgressSpinner = { fg = t.orange },
        NoiceLspProgressTitle = { fg = t.cyan },
    }

    return highlights
end
return M
