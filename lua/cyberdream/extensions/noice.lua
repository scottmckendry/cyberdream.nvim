local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        NoiceFormatProgressDone = { fg = t.bgAlt, bg = t.cyan },
        NoiceFormatProgressTodo = { fg = t.grey, bg = t.bgHighlight },
        NoiceLspProgressClient = { fg = t.blue },
        NoiceLspProgressSpinner = { fg = t.orange },
        NoiceLspProgressTitle = { fg = t.cyan },
    }

    return highlights
end
return M
