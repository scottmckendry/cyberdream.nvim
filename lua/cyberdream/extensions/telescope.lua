local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local borderless_telescope = opts.borderless_telescope
    local telescope_style = ""
    if type(opts.borderless_telescope) == "table" then
        borderless_telescope = not opts.borderless_telescope.border
        telescope_style = opts.borderless_telescope.style
    end

    local highlights = {
        TelescopeBorder = { fg = t.bgHighlight },
        TelescopePromptTitle = { fg = t.blue },
        TelescopeResultsTitle = { fg = t.cyan },
        TelescopePromptPrefix = { fg = t.pink },
        TelescopePreviewTitle = { fg = t.magenta },
        TelescopeSelection = { bg = t.bgHighlight },
        TelescopePromptCounter = { fg = t.pink },
    }

    if borderless_telescope then
        highlights.TelescopeBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopeNormal = { bg = t.bgAlt }
        highlights.TelescopePreviewBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopePreviewNormal = { bg = t.bgAlt }
        if telescope_style == "nvchad" then
            highlights.TelescopePreviewTitle = { fg = t.bgAlt, bg = t.green, bold = true }
            highlights.TelescopePromptBorder = { fg = t.bgHighlight, bg = t.bgHighlight }
            highlights.TelescopePromptNormal = { fg = t.fg, bg = t.bgHighlight }
            highlights.TelescopePromptPrefix = { fg = t.red, bg = t.bgHighlight }
            highlights.TelescopePromptTitle = { fg = t.bgAlt, bg = t.red, bold = true }
        else
            highlights.TelescopePreviewTitle = { fg = t.bgAlt, bg = t.green }
            highlights.TelescopePromptBorder = { fg = t.bgAlt, bg = t.bgAlt }
            highlights.TelescopePromptNormal = { fg = t.fg, bg = t.bgAlt }
            highlights.TelescopePromptPrefix = { fg = t.red, bg = t.bgAlt }
            highlights.TelescopePromptTitle = { fg = t.bgAlt, bg = t.red }
        end
        highlights.TelescopeResultsBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopeResultsNormal = { bg = t.bgAlt }
        highlights.TelescopeResultsTitle = { fg = t.bgAlt, bg = t.cyan }
    end

    return highlights
end

return M
