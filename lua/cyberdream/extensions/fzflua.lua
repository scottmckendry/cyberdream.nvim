local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}

    local highlights = {
        FzfLuaNormal = { bg = t.bgAlt },
        FzfLuaPreviewNormal = { bg = t.bgAlt },
        FzfLuaBorder = { fg = t.bgAlt, bg = t.bgAlt },
        FzfLuaTitle = { bg = t.blue, fg = t.bgAlt },

        FzfLuaFzfMatch = { fg = t.cyan },
        FzfLuaFzfQuery = { fg = t.blue },
        FzfLuaFzfPrompt = { fg = t.fg },
        FzfLuaFzfGutter = { bg = t.bgAlt },
        FzfLuaFzfPointer = { fg = t.pink },
        FzfLuaFzfHeader = { fg = t.purple },
        FzfLuaFzfInfo = { fg = t.cyan },
    }

    if not opts.borderless_telescope then
        highlights.FzfLuaNormal.bg = t.bg
        highlights.FzfLuaPreviewNormal.bg = t.bg
        highlights.FzfLuaBorder = { link = "FloatBorder" }
        highlights.FzfLuaTitle = { link = "FloatTitle" }
    end

    return highlights
end

return M
