local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for windows terminal.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
{
    "background": "${bg}",
    "black": "${bg}",
    "blue": "${blue}",
    "brightBlack": "${bgHighlight}",
    "brightBlue": "${blue}",
    "brightCyan": "${cyan}",
    "brightGreen": "${green}",
    "brightPurple": "${purple}",
    "brightRed": "${red}",
    "brightWhite": "${fg}",
    "brightYellow": "${yellow}",
    "cursorColor": "${fg}",
    "cyan": "${cyan}",
    "foreground": "${fg}",
    "green": "${green}",
    "name": "cyberdream",
    "purple": "${purple}",
    "red": "${red}",
    "selectionBackground": "${bgHighlight}",
    "white": "${fg}",
    "yellow": "${yellow}"
}
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
