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
    [manager.border_style]
        fg = "${grey}"

    [manager.cwd]
        fg = "${cyan}"

    [manager.find_keyword]
        bold = true
        fg = "${green}"

    [manager.find_position]
        fg = "${fg}"

    [manager.hovered]
        bg = "${grey}"
        bold = true
        fg = "${fg}"

    [manager.marker_copied]
        bg = "${yellow}"
        fg = "${yellow}"

    [manager.marker_cut]
        bg = "${red}"
        fg = "${red}"

    [manager.marker_selected]
        bg = "${green}"
        fg = "${green}"

    [manager.preview_hovered]
        bg = "${grey}"
        bold = true
        fg = "${fg}"

    [manager.tab_active]
        bg = "${blue}"
        fg = "${bg}"

    [manager.tab_inactive]
        bg = "${bgHighlight}"
        fg = "${fg}"

[completion]
    [completion.active]
        bg = "${grey}"
        fg = "${purple}"

    [completion.border]
        fg = "${blue}"

    [completion.inactive]
        fg = "${fg}"

[[filetype.rules]]
    fg = "${cyan}"
    mime = "image/*"

[[filetype.rules]]
    fg = "${yellow}"
    mime = "video/*"

[[filetype.rules]]
    fg = "${yellow}"
    mime = "audio/*"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/zip"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/gzip"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/x-tar"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/x-bzip"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/x-bzip2"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/x-7z-compressed"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/x-rar"

[[filetype.rules]]
    fg = "${purple}"
    mime = "application/xz"

[[filetype.rules]]
    fg = "${green}"
    mime = "application/doc"

[[filetype.rules]]
    fg = "${green}"
    mime = "application/pdf"

[[filetype.rules]]
    fg = "${green}"
    mime = "application/rtf"

[[filetype.rules]]
    fg = "${green}"
    mime = "application/vnd.*"

[[filetype.rules]]
    bold = true
    fg = "${blue}"
    mime = "inode/directory"

[[filetype.rules]]
    fg = "${fg}"
    mime = "*"

[help]
    [help.desc]
        fg = "${fg}"

    [help.footer]
        fg = "${fg}"

    [help.hovered]
        bg = "${grey}"
        fg = "${fg}"

    [help.on]
        fg = "${purple}"

    [help.run]
        fg = "${cyan}"

[input]
    [input.border]
        fg = "${blue}"

    [input.selected]
        bg = "${grey}"

    [input.title]
        fg = "${fg}"

    [input.value]
        fg = "${fg}"

[select]
    [select.active]
        fg = "${purple}"

    [select.border]
        fg = "${blue}"

    [select.inactive]
        fg = "${fg}"

[status]
    [status.mode_normal]
        bg = "${blue}"
        bold = true
        fg = "${bg}"

    [status.mode_select]
        bg = "${green}"
        bold = true
        fg = "${bg}"

    [status.mode_unset]
        bg = "${magenta}"
        bold = true
        fg = "${bg}"

    [status.permissions_r]
        fg = "${yellow}"

    [status.permissions_s]
        fg = "${cyan}"

    [status.permissions_t]
        fg = "${blue}"

    [status.permissions_w]
        fg = "${red}"

    [status.permissions_x]
        fg = "${green}"

    [status.progress_error]
        bg = "${bg}"
        fg = "${red}"

    [status.progress_label]
        bg = "${bg}"
        fg = "${fg}"

    [status.progress_normal]
        bg = "${bg}"
        fg = "${fg}"

    [status.separator_style]
        bg = "${bgHighlight}"
        fg = "${bgHighlight}"

[tasks]
    [tasks.border]
        fg = "${blue}"

    [tasks.hovered]
        bg = "${grey}"
        fg = "${fg}"

    [tasks.title]
        fg = "${fg}"

[which]
    [which.cand]
        fg = "${cyan}"

    [which.desc]
        fg = "${fg}"

    [which.mask]
        bg = "${bgHighlight}"

    [which.rest]
        fg = "${magenta}"

    [which.separator_style]
        fg = "${grey}"
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
