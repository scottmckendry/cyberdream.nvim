local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        NotifyDEBUGBody = { fg = t.fg },
        NotifyDEBUGBorder = { fg = t.bh_highlight },
        NotifyDEBUGIcon = { fg = t.grey },
        NotifyDEBUGTitle = { fg = t.grey },
        NotifyERRORBody = { fg = t.fg },
        NotifyERRORBorder = { fg = t.bh_highlight },
        NotifyERRORIcon = { fg = t.red },
        NotifyERRORTitle = { fg = t.pink },
        NotifyINFOBody = { fg = t.fg },
        NotifyINFOBorder = { fg = t.bh_highlight },
        NotifyINFOIcon = { fg = t.green },
        NotifyINFOTitle = { fg = t.cyan },
        NotifyTRACEBorder = { fg = t.bh_highlight },
        NotifyTRACEIcon = { fg = t.purple },
        NotifyTRACETitle = { fg = t.magenta },
        NotifyWARNBody = { fg = t.fg },
        NotifyWARNBorder = { fg = t.bh_highlight },
        NotifyWARNIcon = { fg = t.orange },
        NotifyWARNTitle = { fg = t.yellow },
        NotifyBackground = { bg = t.bg },
    }

    if opts.transparent then
        highlights.NotifyBackground = { bg = "#000000" }
    end

    return highlights
end
return M
