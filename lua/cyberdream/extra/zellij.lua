local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for zellij.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
themes {
    cyberdream {
        bg "${bg}"
        fg "${fg}"
        black "${grey}"
        red "${red}"
        green "${green}"
        yellow "${yellow}"
        blue "${blue}"
        magenta "${magenta}"
        cyan "${cyan}"
        white "${fg}"
        orange "${orange}"
    }
}
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
