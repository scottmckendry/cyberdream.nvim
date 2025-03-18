local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        HelpviewTitle = { fg = t.orange, bg = util.blend(t.bg_solid, t.orange, 0.8), bold = true },
        HelpviewHeading1 = { fg = t.cyan, bg = util.blend(t.bg_solid, t.cyan, 0.8), bold = true },
        HelpviewHeading2 = { fg = t.blue, bg = util.blend(t.bg_solid, t.blue, 0.8), bold = true },
        HelpviewHeading3 = { fg = t.purple, bg = util.blend(t.bg_solid, t.purple, 0.8), bold = true },
        HelpviewHeading4 = { fg = t.magenta, bg = util.blend(t.bg_solid, t.magenta, 0.8), bold = true },

        HelpviewCode = { bg = t.bg_alt },
        HelpviewInlineCode = { link = "HelpviewCode" },
        HelpviewCodeLanguage = { fg = t.grey, bg = t.bg_alt, italic = true },

        HelpviewTaglink = { fg = t.blue },
        HelpviewOptionlink = { fg = util.blend(t.cyan, t.magenta, 0.4) },
        HelpviewMentionlink = { fg = t.cyan, underline = true },
    }

    for i = 1, 10 do
        highlights["HelpviewGradient" .. i] = { fg = util.blend(t.grey, t.bg_solid, i / 10) }
    end

    return highlights
end
return M
