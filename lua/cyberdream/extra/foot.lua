local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format colors for foot, removing #
--- @param hex string: The hex color to format. Must be in the format "#RRGGBB".
local function format_color(hex)
    return string.sub(hex, 2)
end

--- Iterate over the colors in a table and format them.
--- @param t table: The table of colors to format.
local function format_colors(t)
    local formatted = {}
    for k, v in pairs(t) do
        formatted[k] = format_color(v)
    end
    return formatted
end

--- Generate the theme for kitty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = format_colors(colors[variant])
    local template = [==[
# Cyberdream theme for foot terminal
[cursor]
color=      ${bg} ${fg}

[colors]
background= ${bg}
foreground= ${fg}
# The  eight basic ANSI colors (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White)
regular0=   ${bg}
regular1=   ${red}
regular2=   ${green}
regular3=   ${yellow}
regular4=   ${blue}
regular5=   ${purple}
regular6=   ${cyan}
regular7=   ${fg}
# The eight bright ANSI colors (Black, Red, Green, Yellow, Blue, Magenta, Cyan, White)
bright0=    ${bg_highlight}
bright1=    ${red}
bright2=    ${green}
bright3=    ${yellow}
bright4=    ${blue}
bright5=    ${purple}
bright6=    ${cyan}
bright7=    ${fg}
bright7=    ${fg}
]==]

    return util.parse_extra_template(template, t)
end

return M
