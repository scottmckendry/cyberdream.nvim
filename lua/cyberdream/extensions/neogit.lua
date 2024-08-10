local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        NeogitNormal = { bg = t.bg },
        NeogitPopupSwitchKey = { fg = t.orange },
        NeogitPopupOptionKey = { fg = t.orange },
        NeogitPopupActionKey = { fg = t.orange },
        NeogitPopupBranchName = { fg = t.cyan, bold = true },
        NeogitPopupSectionTitle = { fg = t.pink, bold = true },
        NeogitFold = { fg = t.fg },
        NeogitRemote = { fg = t.cyan },
        NeogitBranch = { fg = t.pink, bold = true },
        NeogitBranchHead = { fg = t.pink, bold = true },
        NeogitWinSeparator = { bg = t.bg, fg = t.bgHighlight },
        NeogitChangeDeleted = { fg = t.red, bold = true, italic = true },
        NeogitChangeModified = { fg = t.blue, bold = true, italic = true },
        NeogitSectionHeader = { fg = t.orange, bold = true },
        NeogitCommitViewHeader = { bg = t.pink, fg = t.bgAlt },
        NeogitHunkHeader = { bg = t.cyan, fg = t.bgAlt, bold = true },
        NeogitHunkHeaderHighlight = { bg = t.pink, fg = t.bgAlt, bold = true },
        NeogitDiffHeader = { bg = t.fg, fg = t.bgAlt },
        NeogitDiffContext = { bg = t.bg },
        NeogitDiffHeaderHighlight = { bg = t.bgHighlight, fg = t.orange, bold = true, italic = true },
        NeogitDiffContextHighlight = { bg = t.bgHighlight },
    }

    return highlights
end

return M
