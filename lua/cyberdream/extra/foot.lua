local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format colors for foot, removing #
--- @param hex string: The hex color to format. Must be in the format "#RRGGBB".
local function format_color(hex)
    return string.sub(hex, 2)
end

--- Iterate over the colors in a table and format them, prefixing the keys.
--- @param t table: The table of colors to format.
--- @param prefix string: The prefix to add to each key.
local function format_colors(t, prefix)
    local formatted = {}
    for k, v in pairs(t) do
        formatted[prefix .. k] = format_color(v)
    end
    return formatted
end

local template = [==[
# Cyberdream theme for foot terminal

[colors-dark]
cursor=     ${dark_bg} ${dark_fg}
background= ${dark_bg}
foreground= ${dark_fg}
# The  eight basic ANSI colors (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White)
regular0=   ${dark_bg}
regular1=   ${dark_red}
regular2=   ${dark_green}
regular3=   ${dark_yellow}
regular4=   ${dark_blue}
regular5=   ${dark_purple}
regular6=   ${dark_cyan}
regular7=   ${dark_fg}
# The eight bright ANSI colors (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White)
bright0=    ${dark_bg_highlight}
bright1=    ${dark_red}
bright2=    ${dark_green}
bright3=    ${dark_yellow}
bright4=    ${dark_blue}
bright5=    ${dark_purple}
bright6=    ${dark_cyan}
bright7=    ${dark_fg}

[colors-light]
cursor=     ${light_bg} ${light_fg}
background= ${light_bg}
foreground= ${light_fg}
# The  eight basic ANSI colors (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White)
regular0=   ${light_bg}
regular1=   ${light_red}
regular2=   ${light_green}
regular3=   ${light_yellow}
regular4=   ${light_blue}
regular5=   ${light_purple}
regular6=   ${light_cyan}
regular7=   ${light_fg}
# The eight bright ANSI colors (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White)
bright0=    ${light_bg_highlight}
bright1=    ${light_red}
bright2=    ${light_green}
bright3=    ${light_yellow}
bright4=    ${light_blue}
bright5=    ${light_purple}
bright6=    ${light_cyan}
bright7=    ${light_fg}
]==]

--- Generate the theme for foot.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    -- The light extra is pinned to the light palette in both sections, so
    -- including it always results in a light theme, as before.
    -- The dark extras pair the variant with the light palette so that foot
    -- can switch between them at runtime.
    local dark_variant = variant == "light" and "light" or variant
    local light_variant = "light"

    local t = format_colors(colors[dark_variant], "dark_")
    for k, v in pairs(format_colors(colors[light_variant], "light_")) do
        t[k] = v
    end

    return util.parse_extra_template(template, t)
end

return M
