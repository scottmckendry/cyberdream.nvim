local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        CmpDocumentation = { fg = t.grey, bg = t.bg },
        CmpDocumentationBorder = { fg = t.grey, bg = t.bg },
        CmpGhostText = { fg = t.grey, bg = t.bg },
        CmpItemAbbr = { fg = t.fg, bg = t.bg },
        CmpItemAbbrDeprecated = { fg = t.grey, bg = t.bg, strikethrough = true },
        CmpItemAbbrMatch = { fg = t.purple, bg = t.bg },
        CmpItemAbbrMatchFuzzy = { fg = t.purple, bg = t.bg },
        CmpItemKindVariable = { fg = t.cyan, bg = t.bg },
        CmpItemKindInterface = { fg = t.cyan, bg = t.bg },
        CmpItemKindText = { fg = t.cyan, bg = t.bg },
        CmpItemKindFunction = { fg = t.pink, bg = t.bg },
        CmpItemKindMethod = { fg = t.pink, bg = t.bg },
        CmpItemKindKeyword = { fg = t.fg, bg = t.bg },
        CmpItemKindProperty = { fg = t.fg, bg = t.bg },
        CmpItemKindUnit = { fg = t.fg, bg = t.bg },
        CmpItemMenu = { fg = t.grey, bg = t.bg },
        CmpItemKindDefault = { fg = t.grey, bg = t.bg },
    }

    return highlights
end
return M
