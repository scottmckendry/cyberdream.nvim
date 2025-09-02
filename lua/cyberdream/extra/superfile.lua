local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for superfile
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
# Borders
file_panel_border = "${dark_grey}"
sidebar_border = "${dark_grey}"
footer_border = "${dark_grey}"

file_panel_border_active = "${pastel_pink}"
sidebar_border_active = "${orange}"
footer_border_active = "${magenta}"
modal_border_active = "${pastel_pink}"

full_screen_bg = "${bg}"
file_panel_bg = "${bg}"
sidebar_bg = "${bg}"
footer_bg = "${bg}"
modal_bg = "${bg}"

full_screen_fg = "${light_grey}"
file_panel_fg = "${light_grey}"
sidebar_fg = "${fg}"
footer_fg = "${light_grey}"
modal_fg = "${light_grey}"

cursor = "${fg}"
correct = "${green}"
error = "${red}"
hint = "${blue}"
cancel = "${yellow}"
# Gradient color can only have two colors!
gradient_color = ["${blue}", "${purple}"]

file_panel_top_directory_icon = "${cyan}"
file_panel_top_path = "${blue}"
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

help_menu_hotkey = "${cyan}"
help_menu_title = "${purple}"
]==]

    local custom_colours = colors[variant]

    local t = vim.tbl_extend("force", {}, custom_colours)
    t.light_grey = util.blend(custom_colours.fg, custom_colours.grey, 0.7)
    t.dark_grey = util.blend(custom_colours.bg, custom_colours.grey, 0.5)
    t.pastel_pink = util.blend(custom_colours.pink, custom_colours.fg, 0.7)

    return util.parse_extra_template(template, t)
end

return M
