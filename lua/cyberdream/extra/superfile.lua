local colors = require("cyberdream.color")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for superfile
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
file_panel_border = "${bg_highlight}"
sidebar_border = "${bg_alt}"
footer_border = "${bg_highlight}"

file_panel_border_active = "${magenta}"
sidebar_border_active = "${orange}"
footer_border_active = "${magenta}"
modal_border_active = "${magenta}"

full_screen_bg = "${bg}"
file_panel_bg = "${bg}"
sidebar_bg = "${bg}"
footer_bg = "${bg}"
modal_bg = "${bg}"

full_screen_fg = "${fg}"
file_panel_fg = "${fg}"
sidebar_fg = "${fg}"
footer_fg = "${fg}"
modal_fg = "${fg}"

cursor = "${green}"
correct = "${green}"
error = "${red}"
hint = "${blue}"
cancel = "${yellow}"
# Gradient color can only have two color!
gradient_color = ["${blue}", "${purple}"]

file_panel_top_directory_icon = "${green}"
file_panel_top_path = "${green}"
file_panel_item_selected_fg = "${orange}"
file_panel_item_selected_bg = ""

sidebar_title = "${orange}"
sidebar_item_selected_fg = "${green}"
sidebar_item_selected_bg = ""
sidebar_divider = "${bg_alt}"

modal_cancel_fg = "${bg_highlight}"
modal_cancel_bg = "${red}"

modal_confirm_fg = "${bg_highlight}"
modal_confirm_bg = "${green}"

help_menu_hotkey = "${green}"
help_menu_title = "${yellow}"
    ]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
