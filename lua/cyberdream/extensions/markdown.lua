local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        RenderMarkdownH1 = { fg = t.orange, bold = true },
        RenderMarkdownH2 = { fg = t.cyan, bold = true },
        RenderMarkdownH3 = { fg = t.blue, bold = true },
        RenderMarkdownH4 = { fg = t.purple, bold = true },
        RenderMarkdownH5 = { fg = t.magenta, bold = true },
        RenderMarkdownH6 = { fg = t.green, bold = true },

        RenderMarkdownH1Bg = { bg = util.blend(t.bg_solid, t.orange, 0.85) },
        RenderMarkdownH2Bg = { bg = util.blend(t.bg_solid, t.cyan, 0.85) },
        RenderMarkdownH3Bg = { bg = util.blend(t.bg_solid, t.blue, 0.85) },
        RenderMarkdownH4Bg = { bg = util.blend(t.bg_solid, t.purple, 0.85) },
        RenderMarkdownH5Bg = { bg = util.blend(t.bg_solid, t.magenta, 0.85) },
        RenderMarkdownH6Bg = { bg = util.blend(t.bg_solid, t.green, 0.85) },

        RenderMarkdownCode = { bg = t.bg_alt },
        RenderMarkdownBullet = { fg = t.grey },
        RenderMarkdownQuote = { link = "Comment" },
        RenderMarkdownDash = { fg = t.grey },
        RenderMarkdownLink = { link = "@markup.link.label.markdown_inline" },
        RenderMarkdownMath = { link = "@markup.math" },
        RenderMarkdownTodo = { fg = t.orange },
        RenderMarkdownTableHead = { fg = t.grey },
        RenderMarkdownTableRow = { fg = util.blend(t.grey, t.bg_solid, 0.7) },
        RenderMarkdownTableFill = { link = "Conceal" },
        RenderMarkdownSuccess = { fg = t.green },
        RenderMarkdownInfo = { fg = t.blue },
        RenderMarkdownHint = { fg = t.cyan },
        RenderMarkdownWarn = { fg = t.orange },
        RenderMarkdownError = { fg = t.red },
    }
    return highlights
end
return M
