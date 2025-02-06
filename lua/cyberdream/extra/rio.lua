local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for https://raphamorim.io/rio/
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    function CreateDimColor(hex)
        return util.blend(hex, variant == "default" and colors[variant].bg or colors[variant].fg, 0.8)
    end

    function CreateLightColor(hex)
        return util.blend(hex, variant == "default" and colors[variant].fg or colors[variant].bg, 0.8)
    end

    local extended_colors = vim.fn.copy(colors[variant])
    for key, value in pairs(colors[variant]) do
        extended_colors[key .. "Dim"] = CreateDimColor(value)
        extended_colors[key .. "Light"] = CreateLightColor(value)
    end

    local template = [==[
[colors]
# Regular colors
background = '${bg}'
black = '${bg_alt}'
blue = '${blue}'
cursor = '${fg}'
cyan = '${cyan}'
foreground  = '${fg}'
green = '${green}'
magenta = '${magenta}'
red = '${red}'
white = '${fg}'
yellow = '${yellow}'

# UI colors
tabs = '${bg_highlight}'
tabs-active = '${grey}'
selection-foreground = '${fg}'
selection-background = '${bg_alt}'

# Dim colors
dim-black = '${bg_altDim}'
dim-blue = '${blueDim}'
dim-cyan = '${cyanDim}'
dim-foreground  = '${fgDim}'
dim-green = '${greenDim}'
dim-magenta = '${magentaDim}'
dim-red = '${redDim}'
dim-white = '${fgDim}'
dim-yellow = '${yellowDim}'

# Light colors
light-black = '${bg_altLight}'
light-blue = '${blueLight}'
light-cyan = '${cyanLight}'
light-foreground  = '${fgLight}'
light-green = '${greenLight}'
light-magenta = '${magentaLight}'
light-red = '${redLight}'
light-white = '${fgLight}'
light-yellow = '${yellowLight}'
]==]

    return util.parse_extra_template(template, extended_colors)
end

return M
