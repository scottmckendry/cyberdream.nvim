local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        MarkviewHeading1 = { fg = t.orange, bg = util.blend(t.bg_solid, t.orange, 0.8), bold = true },
        MarkviewHeading2 = { fg = t.cyan, bg = util.blend(t.bg_solid, t.cyan, 0.8), bold = true },
        MarkviewHeading3 = { fg = t.blue, bg = util.blend(t.bg_solid, t.blue, 0.8), bold = true },
        MarkviewHeading4 = { fg = t.purple, bg = util.blend(t.bg_solid, t.purple, 0.8), bold = true },
        MarkviewHeading5 = { fg = t.magenta, bg = util.blend(t.bg_solid, t.magenta, 0.8), bold = true },
        MarkviewHeading6 = { fg = t.green, bg = util.blend(t.bg_solid, t.green, 0.8), bold = true },

        MarkviewHeading1Sign = { fg = t.orange },
        MarkviewHeading2Sign = { fg = t.cyan },
        MarkviewHeading3Sign = { fg = t.blue },
        MarkviewHeading4Sign = { fg = t.purple },
        MarkviewHeading5Sign = { fg = t.magenta },
        MarkviewHeading6Sign = { fg = t.green },

        MarkviewBlockQuoteDefault = { link = "Comment" },
        MarkviewBlockQuoteOk = { fg = t.green },
        MarkviewBlockQuoteWarn = { fg = t.yellow },
        MarkviewBlockQuoteError = { fg = t.red },
        MarkviewBlockQuoteNote = { fg = t.blue },
        MarkviewBlockQuoteSpecial = { fg = t.cyan },

        MarkviewCode = { bg = util.blend(t.bg_alt, t.bg_highlight, 0.8) },
        MarkviewInlineCode = { fg = t.pink, bg = util.blend(t.bg_alt, t.bg_highlight, 0.8) },

        MarkviewTableBorder = { fg = t.bg_highlight },
        MarkviewTableAlignLeft = { fg = t.green },
        MarkviewTableAlignCenter = { fg = t.blue },
        MarkviewTableAlignRight = { fg = t.purple },
    }

    for i = 1, 10 do
        highlights["MarkviewGradient" .. i] = { fg = util.blend(t.grey, t.bg_solid, i / 10) }
    end

    return highlights
end
return M
