local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for wezterm.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
-- cyberdream theme for wezterm
return {
    foreground = "${fg}",
    background = "${bg}",

    cursor_bg = "${fg}",
    cursor_fg = "${bg}",
    cursor_border = "${fg}",

    selection_fg = "${fg}",
    selection_bg = "${bgHighlight}",

    scrollbar_thumb = "${bg}",
    split = "${bg}",

    ansi = { "${bg}", "${red}", "${green}", "${yellow}", "${blue}", "${purple}", "${cyan}", "${fg}" },
    brights = { "${bgHighlight}", "${red}", "${green}", "${yellow}", "${blue}", "${purple}", "${cyan}", "${fg}" },
    indexed = { [16] = "${orange}", [17] = "${red}" },
}
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
