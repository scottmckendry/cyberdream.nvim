local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for tilix.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
{
    "name": "cyberdream",
    "comment": "A high-contrast, futuristic & vibrant colourscheme",
    "background-color": "${bg}",
    "foreground-color": "${fg}",
    "badge-color": "${bg}",
    "bold-color": "${cyan}",
    "cursor-color": "${fg}",
    "highlight-background-color": "${bg_highlight}",
    "highlight-foreground-color": "${fg}",
    "palette": [
        "${bg}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${purple}",
        "${cyan}",
        "${fg}",
        "${bg_highlight}",
        "${red}",
        "${green}",
        "${yellow}",
        "${blue}",
        "${purple}",
        "${cyan}",
        "${fg}"
    ],
    "use-badge-color": false,
    "use-bold-color": false,
    "use-cursor-color": true,
    "use-highlight-color": true,
    "use-theme-colors": false
}
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
