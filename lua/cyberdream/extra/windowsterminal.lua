local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for windows terminal.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
{
    "name": "${name}",
    "cursorColor": "${fg}",
    "selectionBackground": "${bg_highlight}",
    "background": "${bg}",
    "foreground": "${fg}",
    "black": "${bg}",
    "blue": "${blue}",
    "cyan": "${cyan}",
    "green": "${green}",
    "purple": "${purple}",
    "red": "${red}",
    "white": "${fg}",
    "yellow": "${yellow}",
    "brightBlack": "${bg_highlight}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan}",
    "brightGreen": "${green}",
    "brightPurple": "${purple}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}"
}
]==]

    local theme = colors[variant]

    if variant == "default" then
        theme.name = "Cyberdream"
    else
        theme.name = "Cyberdream " .. variant:sub(1, 1):upper() .. variant:sub(2, -1)
    end

    return util.parse_extra_template(template, theme)
end

return M
