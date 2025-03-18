local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        GrappleTitle = { fg = t.pink },
        GrappleFooter = { fg = t.grey },
        GrappleBorder = { fg = t.cyan },
    }

    -- Inherit borderless theme from telescope (if enabled)
    if opts.borderless_pickers then
        highlights.GrappleNormal = { bg = t.bg_alt }
        highlights.GrappleBorder = { fg = t.bg_alt, bg = t.bg_alt }
        highlights.GrappleTitle = { fg = t.bg_alt, bg = t.cyan }
    end

    return highlights
end
return M
