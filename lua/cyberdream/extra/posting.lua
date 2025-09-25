local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate the theme for posting.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = colors[variant]
    local template = [==[
name: cyberdream
primary: "${purple}"
secondary: "${blue}"
accent: "${cyan}"
background: "${bg}"
surface: "${bg_alt}"
error: "${red}"
success: "${green}"
warning: "${orange}"

author: Scott McKendry
description: High-contrast, Futuristic & Vibrant Posting Theme
homepage: https://github.com/scottmckendry/cyberdream.nvim/tree/main/extras/posting
]==]

    return util.parse_extra_template(template, t)
end

return M
