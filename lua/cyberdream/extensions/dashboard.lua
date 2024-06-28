local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        DashboardHeader = { fg = t.purple },
        DashboardFooter = { fg = t.cyan },
        DashboardShortCut = { fg = t.orange },
        DashboardDesc = { fg = t.orange },
        DashboardKey = { fg = t.green },
        DashboardIcon = { fg = t.blue },
        DashboardProjectTitle = { fg = t.blue },
        DashboardProjectTitleIcon = { fg = t.orange },
        DashboardProjectIcon = { fg = t.orange },
        DashboardMruTitle = { fg = t.blue },
        DashboardMruIcon = { fg = t.orange },
        DashboardFiles = { fg = t.cyan },
        DashboardShortCutIcon = { fg = t.pink },
    }

    return highlights
end
return M
