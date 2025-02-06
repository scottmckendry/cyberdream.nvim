local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate the theme for ghostty.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = colors[variant]
    local template = [==[
# cyberdream theme for ghostty
palette = 0=${bg}
palette = 1=${red}
palette = 2=${green}
palette = 3=${yellow}
palette = 4=${blue}
palette = 5=${purple}
palette = 6=${cyan}
palette = 7=${fg}
palette = 8=${bg_highlight}
palette = 9=${red}
palette = 10=${green}
palette = 11=${yellow}
palette = 12=${blue}
palette = 13=${purple}
palette = 14=${cyan}
palette = 15=${fg}

background = ${bg}
foreground = ${fg}
cursor-color = ${fg}
selection-background = ${bg_highlight}
selection-foreground = ${fg}
]==]

    return util.parse_extra_template(template, t)
end

return M
