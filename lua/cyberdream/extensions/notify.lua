local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        NotifyDEBUGBody = { fg = t.fg },
        NotifyDEBUGBorder = { fg = t.bg_highlight },
        NotifyDEBUGIcon = { fg = t.grey },
        NotifyDEBUGTitle = { fg = t.grey },
        NotifyERRORBody = { fg = t.fg },
        NotifyERRORBorder = { fg = t.bg_highlight },
        NotifyERRORIcon = { fg = t.red },
        NotifyERRORTitle = { fg = t.pink },
        NotifyINFOBody = { fg = t.fg },
        NotifyINFOBorder = { fg = t.bg_highlight },
        NotifyINFOIcon = { fg = t.green },
        NotifyINFOTitle = { fg = t.cyan },
        NotifyTRACEBorder = { fg = t.bg_highlight },
        NotifyTRACEIcon = { fg = t.purple },
        NotifyTRACETitle = { fg = t.magenta },
        NotifyWARNBody = { fg = t.fg },
        NotifyWARNBorder = { fg = t.bg_highlight },
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
