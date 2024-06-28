local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        GrappleTitle = { fg = t.pink },
        GrappleFooter = { fg = t.grey },
        GrappleBorder = { fg = t.cyan },
    }

    -- Inherit borderless theme from telescope (if enabled)
    if opts.borderless_telescope then
        highlights.GrappleNormal = { bg = t.bgAlt }
        highlights.GrappleBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.GrappleTitle = { fg = t.bgAlt, bg = t.cyan }
    end

    return highlights
end
return M
