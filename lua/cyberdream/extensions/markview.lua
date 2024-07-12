local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        MarkviewCol1 = { fg = t.orange, bg = util.blend(t.bg_solid, t.orange, 0.9), bold = true },
        MarkviewCol2 = { fg = t.cyan, bg = util.blend(t.bg_solid, t.cyan, 0.9), bold = true },
        MarkviewCol3 = { fg = t.blue, bg = util.blend(t.bg_solid, t.blue, 0.9), bold = true },
        MarkviewCol4 = { fg = t.purple, bg = util.blend(t.bg_solid, t.purple, 0.9), bold = true },
        MarkviewCol5 = { fg = t.magenta, bg = util.blend(t.bg_solid, t.magenta, 0.9), bold = true },
        MarkviewCol6 = { fg = t.green, bg = util.blend(t.bg_solid, t.green, 0.9), bold = true },

        MarkviewLayer = { bg = util.blend(t.bgAlt, t.bgHighlight, 0.8) },
        MarkviewLayer2 = { bg = util.blend(t.bgAlt, t.bgHighlight, 0.8) },

        MarkviewCol1Fg = { fg = t.red }, -- danger, bug, caution
        MarkviewCol2Fg = { fg = t.orange }, -- question, warning
        MarkviewCol3Fg = { fg = t.yellow }, -- important, custom
        MarkviewCol4Fg = { fg = t.cyan }, -- success, tip
        MarkviewCol5Fg = { fg = t.blue }, -- abstract, todo, note
        MarkviewCol6Fg = { fg = t.pink }, -- example
        MarkviewCol7Fg = { fg = t.grey }, -- quote
    }

    for i = 1, 10 do
        highlights["MarkviewGradient" .. i] = { fg = util.blend(t.grey, t.bg_solid, i / 10) }
    end

    return highlights
end
return M
