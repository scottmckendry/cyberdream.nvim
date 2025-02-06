local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for yazi
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
[manager]
# tmTheme files can be found here: https://github.com/scottmckendry/cyberdream.nvim/tree/main/extras/textmate 
syntect_theme = "../bat/themes/cyberdream.tmTheme"
border_style = { fg = "${bg_highlight}" }
cwd = { fg = "${cyan}" }
find_keyword = { bold = true, fg = "${green}" }
find_position = { fg = "${fg}" }
hovered = { bg = "${grey}", bold = true, fg = "${fg}" }
marker_copied = { bg = "${yellow}", fg = "${yellow}" }
marker_cut = { bg = "${red}", fg = "${red}" }
marker_selected = { bg = "${bg_highlight}", fg = "${green}" }
preview_hovered = { bg = "${bg_highlight}", bold = true, fg = "${fg}" }
tab_active = { bg = "${blue}", fg = "${bg}" }
tab_inactive = { bg = "${bg_highlight}", fg = "${fg}" }

count_selected = { bg = "${green}", fg = "${bg}" }
count_copied = { bg = "${yellow}", fg = "${bg}" }
count_cut = { bg = "${red}", fg = "${bg}" }

[completion]
active = { bg = "${grey}", fg = "${purple}" }
border = { fg = "${blue}" }
inactive = { fg = "${fg}" }

[filetype]
rules = [
    { fg = "${cyan}", mime = "image/*" },
    { fg = "${yellow}", mime = "video/*" },
    { fg = "${yellow}", mime = "audio/*" },
    { fg = "${purple}", mime = "application/zip" },
    { fg = "${purple}", mime = "application/gzip" },
    { fg = "${purple}", mime = "application/x-tar" },
    { fg = "${purple}", mime = "application/x-bzip" },
    { fg = "${purple}", mime = "application/x-bzip2" },
    { fg = "${purple}", mime = "application/x-7z-compressed" },
    { fg = "${purple}", mime = "application/x-rar" },
    { fg = "${purple}", mime = "application/xz" },
    { fg = "${green}", mime = "application/doc" },
    { fg = "${green}", mime = "application/pdf" },
    { fg = "${green}", mime = "application/rtf" },
    { fg = "${green}", mime = "application/vnd.*" },
    { bold = true, fg = "${blue}", mime = "inode/directory" },
    { fg = "${fg}", mime = "*" }
]

[help]
desc = { fg = "${fg}" }
footer = { fg = "${fg}" }
hovered = { bg = "${grey}", fg = "${fg}" }
on = { fg = "${purple}" }
run = { fg = "${cyan}" }

[input]
border = { fg = "${blue}" }
selected = { bg = "${grey}" }
title = { fg = "${fg}" }
value = { fg = "${fg}" }

[select]
active = { fg = "${purple}" }
border = { fg = "${blue}" }
inactive = { fg = "${fg}" }

[status]
mode_normal = { bg = "${blue}", bold = true, fg = "${bg}" }
mode_select = { bg = "${green}", bold = true, fg = "${bg}" }
mode_unset = { bg = "${magenta}", bold = true, fg = "${bg}" }
permissions_r = { fg = "${yellow}" }
permissions_s = { fg = "${cyan}" }
permissions_t = { fg = "${blue}" }
permissions_w = { fg = "${red}" }
permissions_x = { fg = "${green}" }
progress_error = { bg = "${bg}", fg = "${red}" }
progress_label = { bg = "${bg}", fg = "${fg}" }
progress_normal = { bg = "${bg}", fg = "${fg}" }
separator_style = { bg = "${bg_highlight}", fg = "${bg_highlight}" }

[tasks]
border = { fg = "${blue}" }
hovered = { bg = "${grey}", fg = "${fg}" }
title = { fg = "${fg}" }

[which]
cand = { fg = "${cyan}" }
desc = { fg = "${fg}" }
mask = { bg = "${bg_highlight}" }
rest = { fg = "${magenta}" }
separator_style = { fg = "${grey}" }
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
