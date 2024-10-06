local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for Warp.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
background: "${bg}"
accent: "${green}"
foreground: "${fg}"
details: darker
terminal_colors:
  normal:
    black: "${grey}"
    red: "${red}"
    green: "${green}"
    yellow: "${yellow}"
    blue: "${blue}"
    magenta: "${magenta}"
    cyan: "${cyan}"
    white: "${pink}"
  bright:
    black: "${grey}"
    red: "${red}"
    green: "${green}"
    yellow: "${yellow}"
    blue: "${blue}"
    magenta: "${magenta}"
    cyan: "${cyan}"
    white: "${pink}"
  ]==]
    return util.parse_extra_template(template, colors[variant])
end

return M
