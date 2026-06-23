local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate the theme for setvtrgb.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = colors[variant]
    local template = [==[
${bg}
${red}
${green}
${yellow}
${blue}
${purple}
${cyan}
${fg}
${bg_highlight}
${red}
${green}
${yellow}
${blue}
${purple}
${cyan}
${fg}
]==]

    return util.parse_extra_template(template, t)
end

return M
