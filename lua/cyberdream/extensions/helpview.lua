local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        HelpviewTitle = { fg = t.orange, bg = util.blend(t.bg_solid, t.orange, 0.8), bold = true },
        HelpviewHeading1 = { fg = t.cyan, bg = util.blend(t.bg_solid, t.cyan, 0.8), bold = true },
        HelpviewHeading2 = { fg = t.blue, bg = util.blend(t.bg_solid, t.blue, 0.8), bold = true },
        HelpviewHeading3 = { fg = t.purple, bg = util.blend(t.bg_solid, t.purple, 0.8), bold = true },
        HelpviewHeading4 = { fg = t.magenta, bg = util.blend(t.bg_solid, t.magenta, 0.8), bold = true },

        HelpviewCode = { bg = t.bgAlt },
        HelpviewInlineCode = { link = "HelpviewCode" },
        HelpviewCodeLanguage = { fg = t.grey, bg = t.bgAlt, italic = true },

        HelpviewTaglink = { fg = t.blue, underline = true },
        HelpviewOptionlink = { fg = util.blend(t.green, t.blue, 0.5), underline = true },
        HelpviewMentionlink = { fg = t.cyan, underline = true },
    }

    for i = 1, 10 do
        highlights["HelpviewGradient" .. i] = { fg = util.blend(t.grey, t.bg_solid, i / 10) }
    end

    return highlights
end
return M
