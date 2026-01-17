local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for vicinae
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
[meta]
description = "Cyberdream theme for vicinae"
inherits = "${inherits}"
name = "Cyberdream"
variant = "${variant}"

[colors.accents]
blue = "${blue}"
cyan = "${cyan}"
green = "${green}"
magenta = "${magenta}"
orange = "${orange}"
purple = "${purple}"
red = "${red}"
yellow = "${yellow}"

[colors.button.primary]
background = "${bg_highlight}"
foreground = "${fg}"

[colors.button.primary.focus]
outline = "${blue}"

[colors.button.primary.hover]
background = "${blue}"

[colors.core]
accent = "${blue}"
accent_foreground = "${fg}"
background = "${bg}"
border = "${bg_highlight}"
foreground = "${fg}"
secondary_background = "${bg_alt}"

[colors.grid.item]
background = "${bg_highlight}"

[colors.grid.item.hover]
outline = "${fg}"

[colors.grid.item.selection]
outline = "${fg}"

[colors.input]
border = "${grey}"
border_error = "${red}"
border_focus = "${blue}"

[colors.list.item.hover]
background = "${bg_highlight}"
foreground = "${fg}"

[colors.list.item.selection]
background = "${bg_highlight}"
foreground = "${fg}"
secondary_background = "${bg_highlight}"
secondary_foreground = "${grey}"

[colors.loading]
bar = "${blue}"
spinner = "${blue}"

[colors.scrollbars]
background = "${grey}"

[colors.text]
danger = "${red}"
default = "${fg}"
muted = "${grey}"
placeholder = "${bg_highlight}"
success = "${green}"

[colors.text.links]
default = "${blue}"
visited = "${pink}"

[colors.text.selection]
background = "${blue}"
foreground = "${fg}"
]==]

    local extended_colors = vim.fn.copy(colors[variant])
    extended_colors.variant = variant == "default" and "dark" or variant
    extended_colors.inherits = variant == "light" and "vicinae-light" or "vicinae-dark"

    return util.parse_extra_template(template, extended_colors)
end

return M
