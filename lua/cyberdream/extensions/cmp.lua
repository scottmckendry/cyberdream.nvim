local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        CmpDocumentation = { fg = t.grey },
        CmpDocumentationBorder = { fg = t.grey },
        CmpGhostText = { fg = t.grey },
        CmpItemAbbr = { fg = t.fg },
        CmpItemAbbrDeprecated = { fg = t.grey, strikethrough = true },
        CmpItemAbbrMatch = { fg = t.purple },
        CmpItemAbbrMatchFuzzy = { fg = t.purple },
        CmpItemKindVariable = { fg = t.cyan },
        CmpItemKindInterface = { fg = t.cyan },
        CmpItemKindText = { fg = t.cyan },
        CmpItemKindFunction = { fg = t.pink },
        CmpItemKindMethod = { fg = t.pink },
        CmpItemKindKeyword = { fg = t.fg },
        CmpItemKindProperty = { fg = t.fg },
        CmpItemKindUnit = { fg = t.fg },
        CmpItemMenu = { fg = t.grey },
        CmpItemKindDefault = { fg = t.grey },
    }

    return highlights
end
return M
