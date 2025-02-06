local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for pywal.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
{
    "colors": {
        "color0": "${bg}",
        "color1": "${red}",
        "color2": "${green}",
        "color3": "${yellow}",
        "color4": "${blue}",
        "color5": "${purple}",
        "color6": "${cyan}",
        "color7": "${fg}",
        "color8": "${bg_highlight}",
        "color9": "${red}",
        "color10": "${green}",
        "color11": "${yellow}",
        "color12": "${blue}",
        "color13": "${purple}",
        "color14": "${cyan}",
        "color15": "${fg}",
        "color16": "${orange}",
        "color17": "${red}"
    },
    "special": {
        "foreground": "${fg}",
        "background": "${bg}",
        "cursor": "${fg}"
    }
}
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
