local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format a color for use in allacritty.
--- @param hex string: The hex color to format. Must be in the format "#RRGGBB".
local function format_color(hex)
    return "0x" .. string.sub(hex, 2)
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

--- Generate the theme for alacritty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = format_colors(colors[variant])
    local template = [==[
# cyberdream theme for alacritty
[[colors.indexed_colors]]
color = "${orange}"
index = 16

[[colors.indexed_colors]]
color = "${red}"
index = 17

[colors.bright]
black = "${bgHighlight}"
blue = "${blue}"
cyan = "${cyan}"
green = "${green}"
magenta = "${purple}"
red = "${red}"
white = "${fg}"
yellow = "${yellow}"

[colors.normal]
black = "${bg}"
blue = "${blue}"
cyan = "${cyan}"
green = "${green}"
magenta = "${purple}"
red = "${red}"
white = "${fg}"
yellow = "${yellow}"

[colors.primary]
background = "${bg}"
foreground = "${fg}"

[colors.selection]
background = "${bgHighlight}"
foreground = "${fg}"
]==]

    return util.parse_extra_template(template, t)
end

return M
