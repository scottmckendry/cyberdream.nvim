local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}

    local highlights = {
        FzfLuaNormal = { bg = t.bg_alt },
        FzfLuaPreviewNormal = { bg = t.bg_alt },
        FzfLuaBorder = { fg = t.bg_alt, bg = t.bg_alt },
        FzfLuaTitle = { bg = t.blue, fg = t.bg_alt },

        FzfLuaFzfMatch = { fg = t.cyan },
        FzfLuaFzfQuery = { fg = t.blue },
        FzfLuaFzfPrompt = { fg = t.fg },
        FzfLuaFzfGutter = { bg = t.bg_alt },
        FzfLuaFzfPointer = { fg = t.pink },
        FzfLuaFzfHeader = { fg = t.purple },
        FzfLuaFzfInfo = { fg = t.cyan },
    }

    if not opts.borderless_pickers then
        highlights.FzfLuaNormal.bg = t.bg
        highlights.FzfLuaPreviewNormal.bg = t.bg
        highlights.FzfLuaBorder = { link = "FloatBorder" }
        highlights.FzfLuaTitle = { link = "FloatTitle" }
    end

    return highlights
end

return M
