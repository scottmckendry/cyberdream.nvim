local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

-- remove the # from the hex color
local function fomat_colors(unformatted)
    local formatted = {}
    for k, v in pairs(unformatted) do
        formatted[k] = string.sub(v, 2)
    end
    return formatted
end

local M = {}

--- Generate cyberdream theme for base16.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local formatted_colors = fomat_colors(colors[variant])
    local template = [==[
scheme: "Cyberdream"
author: "Scott McKendry"
base00: "${bg}"
base01: "${bg_alt}"
base02: "${bg_highlight}"
base03: "${grey}"
base04: "${grey}"
base05: "${fg}"
base06: "${bg}"
base07: "${fg}"
base08: "${red}"
base09: "${orange}"
base0A: "${yellow}"
base0B: "${green}"
base0C: "${cyan}"
base0D: "${blue}"
base0E: "${purple}"
base0F: "${magenta}"
]==]
    return util.parse_extra_template(template, formatted_colors)
end

return M
