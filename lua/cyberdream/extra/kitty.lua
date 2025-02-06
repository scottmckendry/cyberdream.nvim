local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate the theme for kitty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = colors[variant]
    local template = [==[
# cyberdream theme for kitty
background            ${bg}
foreground            ${fg}
cursor                ${fg}
cursor_text_color     ${bg}
selection_background  ${bg_highlight}
color0                ${bg}
color8                ${bg_highlight}
color1                ${red}
color9                ${red}
color2                ${green}
color10               ${green}
color3                ${yellow}
color11               ${yellow}
color4                ${blue}
color12               ${blue}
color5                ${purple}
color13               ${purple}
color6                ${cyan}
color14               ${cyan}
color7                ${fg}
color15               ${fg}
selection_foreground  ${fg}
active_tab_foreground #000000
active_tab_background ${orange}
inactive_tab_foreground ${fg}
inactive_tab_background ${bg}
]==]

    return util.parse_extra_template(template, t)
end

return M
