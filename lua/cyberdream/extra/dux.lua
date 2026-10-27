local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for Dux.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local c = colors[variant]
    local suffix = variant == "default" and "" or "-" .. variant

    local template = [==[
{
    "name": "cyberdream${suffix}",
    "primary": "${cyan}",
    "primaryText": "${bg}",
    "primaryContainer": "${_primary_container}",
    "secondary": "${purple}",
    "surface": "${bg_alt}",
    "surfaceText": "${fg}",
    "surfaceVariant": "${_surface_variant}",
    "surfaceVariantText": "${fg}",
    "surfaceTint": "${cyan}",
    "background": "${bg}",
    "backgroundText": "${fg}",
    "outline": "${_outline}",
    "surfaceContainerLowest": "${bg}",
    "surfaceContainerLow": "${_surface_container_low}",
    "surfaceContainer": "${_surface_container}",
    "surfaceContainerHigh": "${_surface_container_high}",
    "surfaceContainerHighest": "${bg_highlight}",
    "error": "${red}",
    "warning": "${orange}",
    "info": "${blue}",
    "matugen_type": "scheme-expressive",
    "accents": {
        "red": "${red}",
        "orange": "${orange}",
        "yellow": "${yellow}",
        "green": "${green}",
        "teal": "${cyan}",
        "blue": "${blue}",
        "purple": "${purple}",
        "pink": "${pink}"
    }
}
]==]

    local vars = vim.tbl_extend("force", c, {
        suffix = suffix,
        _primary_container = util.blend(c.bg, c.cyan, 0.7),
        _surface_variant = util.blend(c.bg, c.bg_alt, 0.5),
        _outline = c.grey,
        _surface_container_low = util.blend(c.bg, c.bg_alt, 0.5),
        _surface_container = util.blend(c.bg_alt, c.bg_highlight, 0.75),
        _surface_container_high = util.blend(c.bg_alt, c.bg_highlight, 0.5),
    })

    return util.parse_extra_template(template, vars)
end

return M
