local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for https://zed.dev/
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    function CreateDimColor(hex)
        return util.blend(hex, colors[variant].bg, 0.8)
    end

    function CreateLightColor(hex)
        return util.blend(hex, colors[variant].fg, 0.8)
    end

    local modified_colors = vim.fn.copy(colors[variant])
    modified_colors.bgAltDim = CreateDimColor(colors[variant].bgAlt)
    modified_colors.blueDim = CreateDimColor(colors[variant].blue)
    modified_colors.cyanDim = CreateDimColor(colors[variant].cyan)
    modified_colors.fgDim = CreateDimColor(colors[variant].fg)
    modified_colors.greenDim = CreateDimColor(colors[variant].green)
    modified_colors.magentaDim = CreateDimColor(colors[variant].magenta)
    modified_colors.redDim = CreateDimColor(colors[variant].red)
    modified_colors.yellowDim = CreateDimColor(colors[variant].yellow)
    modified_colors.bgAltLight = CreateLightColor(colors[variant].bgAlt)
    modified_colors.blueLight = CreateLightColor(colors[variant].blue)
    modified_colors.cyanLight = CreateLightColor(colors[variant].cyan)
    modified_colors.fgLight = CreateLightColor(colors[variant].fg)
    modified_colors.greenLight = CreateLightColor(colors[variant].green)
    modified_colors.magentaLight = CreateLightColor(colors[variant].magenta)
    modified_colors.redLight = CreateLightColor(colors[variant].red)
    modified_colors.yellowLight = CreateLightColor(colors[variant].yellow)

    local template = [==[
[colors]
# Regular colors
background = '${bg}'
black = '${bgAlt}'
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
tabs = '${bgHighlight}'
tabs-active = '${grey}'
selection-foreground = '${fg}'
selection-background = '${bgAlt}'

# Dim colors
dim-black = '${bgAltDim}'
dim-blue = '${blueDim}'
dim-cyan = '${cyanDim}'
dim-foreground  = '${fgDim}'
dim-green = '${greenDim}'
dim-magenta = '${magentaDim}'
dim-red = '${redDim}'
dim-white = '${fgDim}'
dim-yellow = '${yellowDim}'

# Light colors
light-black = '${bgAltLight}'
light-blue = '${blueLight}'
light-cyan = '${cyanLight}'
light-foreground  = '${fgLight}'
light-green = '${greenLight}'
light-magenta = '${magentaLight}'
light-red = '${redLight}'
light-white = '${fgLight}'
light-yellow = '${yellowLight}'
]==]

    return util.parse_extra_template(template, modified_colors)
end

return M
