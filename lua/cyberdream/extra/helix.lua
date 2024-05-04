local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for helix.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
# cyberdream theme for helix
"ui.background" = "bg"
"ui.text" = "fg"
"ui.cursor" = { bg = "fg", fg = "bg" }
"ui.linenr" = "grey"
"ui.statusline" = { fg = "cyan" }
"ui.selection" = "green"
"ui.selection.primary" = "magenta"

# Syntax Highlighting for Code
"comment" = { fg = "grey", modifiers = ["italic"] }
"comment.line" = { fg = "grey", modifiers = ["italic"] }
"comment.block" = { fg = "grey", modifiers = ["italic"] }
"comment.documentation" = { fg = "blue", modifiers = ["italic"] }
"keyword" = "orange"
"keyword.control" = "orange"
"keyword.operator" = "pink"
"keyword.function" = "orange"
"type" = "cyan"
"type.builtin" = "cyan"
"function" = "blue"
"function.builtin" = "pink"
"function.method" = "blue"
"variable" = "fg"
"variable.builtin" = "magenta"
"variable.parameter" = "cyan"
"string" = "green"
"string.special" = "pink"
"constant" = "fg"
"constant.builtin" = "red"
"constant.numeric" = "yellow"
"constant.character" = "pink"
"constant.boolean" = "red"
"attribute" = "magenta"
"operator" = "purple"
"tag" = { fg = "purple", modifiers = ["bold"] }
"tag.special" = { fg = "orange", modifiers = ["bold"] }
"namespace" = "purple"
"macro" = "orange"
"label" = "red"

# Interface specific
"ui.cursorline.primary" = { bg = "bgHighlight" }
"ui.cursorline.secondary" = { bg = "bgAlt" }
"ui.cursorcolumn.primary" = { bg = "bgHighlight" }
"ui.cursorcolumn.secondary" = { bg = "bgAlt" }
"ui.statusline.normal" = { fg = "fg", bg = "bg" }
"ui.statusline.insert" = { fg = "green", bg = "bg" }
"ui.statusline.select" = { fg = "blue", bg = "bg" }
"ui.statusline.command" = { fg = "red", bg = "bg" }
"ui.statusline.visual" = { fg = "purple", bg = "bg" }

# Diagnostic styles
"warning" = { fg = "yellow", modifiers = ["bold"] }
"error" = { fg = "red", modifiers = ["bold"] }
"info" = { fg = "cyan", modifiers = ["bold"] }
"hint" = { fg = "blue", modifiers = ["bold"] }
"diagnostic.error" = { fg = "red" }
"diagnostic.warning" = { fg = "yellow" }
"diagnostic.info" = { fg = "cyan" }
"diagnostic.hint" = { fg = "blue" }

# Popups and Menus
"ui.popup" = { fg = "fg", bg = "bg" }
"ui.popup.info" = { fg = "cyan", bg = "bgAlt" }
"ui.menu" = { fg = "fg", bg = "bg" }
"ui.menu.selected" = { fg = "bg", bg = "fg" }

# Additional overrides
"ui.virtual.whitespace" = "grey"
"ui.virtual.indent-guide" = { fg = "grey", style = "dotted" }

[palette]
bg = "${bg}"
fg = "${fg}"
grey = "${grey}"
blue = "${blue}"
green = "${green}"
cyan = "${cyan}"
red = "${red}"
yellow = "${yellow}"
magenta = "${magenta}"
pink = "${pink}"
orange = "${orange}"
purple = "${purple}"
bgAlt = "${bgAlt}"
bgHighlight = "${bgHighlight}"
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
