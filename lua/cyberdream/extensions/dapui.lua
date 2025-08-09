local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        DapUINormal = { fg = t.fg, bg = t.bg },
        DapUIVariable = { fg = t.fg, bg = t.bg },
        DapUIScope = { fg = t.fg },
        DapUIType = { fg = t.purple },
        DapUIValue = { fg = t.fg, bg = t.bg },
        DapUIModifiedValue = { fg = t.blue },
        DapUIDecoration = { fg = t.fg },
        DapUIThread = { fg = t.fg },
        DapUIStoppedThread = { fg = t.blue },
        DapUIFrameName = { fg = t.fg, bg = t.bg },
        DapUISource = { fg = t.cyan },
        DapUILineNumber = { fg = t.orange },
        DapUIFloatNormal = { fg = t.fg, bg = t.bg },
        DapUIFloatBorder = { fg = t.bg_highlight },
        DapUIWatchesEmpty = { fg = t.cyan },
        DapUIWatchesValue = { fg = t.green },
        DapUIWatchesError = { fg = t.red },
        DapUIBreakpointsPath = { fg = t.blue },
        DapUIBreakpointsInfo = { fg = t.magenta },
        DapUIBreakpointsCurrentLine = { fg = t.pink },
        DapUIBreakpointsLine = { fg = t.blue },
        DapUIBreakpointsDisabledLine = { fg = t.grey, italic = opts.italic_comments },
        DapUICurrentFrameName = { fg = t.grey },
        DapUIStepOver = { fg = t.cyan },
        DapUIStepInto = { fg = t.cyan },
        DapUIStepBack = { fg = t.cyan },
        DapUIStepOut = { fg = t.cyan },
        DapUIStop = { fg = t.red },
        DapUIPlayPause = { fg = t.green },
        DapUIRestart = { fg = t.orange },
        DapUIUnavailable = { fg = t.grey, italic = opts.italic_comments },
        DapUIWinSelect = { fg = t.pink },
        DapUIEndofBuffer = { fg = t.bg },
    }
    return highlights
end

return M
