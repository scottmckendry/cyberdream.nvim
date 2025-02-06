local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for https://zed.dev/
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local extended_colors = vim.fn.copy(colors[variant])

    for key, value in pairs(colors[variant]) do
        extended_colors[key .. "Alpha"] = value .. "80" -- 50% transparency
    end

    extended_colors.variant = variant == "default" and "dark" or "light"

    local template = [==[
{
  "$schema": "https://zed.dev/schema/themes/v0.1.0.json",
  "name": "Cyberdream",
  "description": "High-contrast, Futuristic & Vibrant Coloursheme for Zed",
  "author": "Byt3m4st3r",
  "themes": [
    {
      "name": "Cyberdream ${variant}",
      "appearance": "${variant}",
      "style": {
        "background.appearance": "opaque",
        "accents": [],
        "border": null,
        "border.variant": null,
        "border.focused": null,
        "border.selected": null,
        "border.transparent": null,
        "border.disabled": null,
        "elevated_surface.background": null,
        "surface.background": null,
        "background": "${bg}",
        "element.background": null,
        "element.hover": null,
        "element.active": null,
        "element.selected": null,
        "element.disabled": null,
        "drop_target.background": null,
        "ghost_element.background": null,
        "ghost_element.hover": null,
        "ghost_element.active": null,
        "ghost_element.selected": null,
        "ghost_element.disabled": null,
        "text": "${fg}",
        "text.muted": null,
        "text.placeholder": null,
        "text.disabled": null,
        "text.accent": null,
        "icon": null,
        "icon.muted": null,
        "icon.disabled": null,
        "icon.placeholder": null,
        "icon.accent": null,
        "status_bar.background": null,
        "title_bar.background": null,
        "toolbar.background": "${bg}",
        "tab_bar.background": null,
        "tab.inactive_background": "${bg}",
        "tab.active_background": "${bg_alt}",
        "search.match_background": "${orangeAlpha}",
        "panel.background": "${bg}",
        "panel.focused_border": null,
        "pane.focused_border": null,
        "pane_group.border": null,
        "scrollbar.thumb.background": null,
        "scrollbar.thumb.hover_background": null,
        "scrollbar.thumb.border": null,
        "scrollbar.track.background": "${bg}",
        "scrollbar.track.border": null,
        "editor.foreground": "${fg}",
        "editor.background": "${bg}",
        "editor.gutter.background": "${bg}",
        "editor.subheader.background": null,
        "editor.active_line.background": "${bg_alt}",
        "editor.highlighted_line.background": null,
        "editor.line_number": null,
        "editor.active_line_number": "${fg}",
        "editor.invisible": null,
        "editor.wrap_guide": null,
        "editor.active_wrap_guide": null,
        "editor.indent_guide": null,
        "editor.indent_guide_active": null,
        "editor.document_highlight.read_background": null,
        "editor.document_highlight.write_background": null,
        "terminal.background": "${bg}",
        "terminal.foreground": null,
        "terminal.bright_foreground": null,
        "terminal.dim_foreground": null,
        "terminal.ansi.black": null,
        "terminal.ansi.bright_black": null,
        "terminal.ansi.dim_black": null,
        "terminal.ansi.red": null,
        "terminal.ansi.bright_red": null,
        "terminal.ansi.dim_red": null,
        "terminal.ansi.green": null,
        "terminal.ansi.bright_green": null,
        "terminal.ansi.dim_green": null,
        "terminal.ansi.yellow": null,
        "terminal.ansi.bright_yellow": null,
        "terminal.ansi.dim_yellow": null,
        "terminal.ansi.blue": null,
        "terminal.ansi.bright_blue": null,
        "terminal.ansi.dim_blue": null,
        "terminal.ansi.magenta": null,
        "terminal.ansi.bright_magenta": null,
        "terminal.ansi.dim_magenta": null,
        "terminal.ansi.cyan": null,
        "terminal.ansi.bright_cyan": null,
        "terminal.ansi.dim_cyan": null,
        "terminal.ansi.white": null,
        "terminal.ansi.bright_white": null,
        "terminal.ansi.dim_white": null,
        "link_text.hover": null,
        "conflict": null,
        "conflict.background": null,
        "conflict.border": null,
        "created": null,
        "created.background": null,
        "created.border": null,
        "deleted": null,
        "deleted.background": null,
        "deleted.border": null,
        "error": "${red}",
        "error.background": "${bg}",
        "error.border": null,
        "hidden": null,
        "hidden.background": null,
        "hidden.border": null,
        "hint": "${grey}",
        "hint.background": null,
        "hint.border": null,
        "ignored": null,
        "ignored.background": null,
        "ignored.border": null,
        "info": null,
        "info.background": null,
        "info.border": null,
        "modified": "${orange}",
        "modified.background": null,
        "modified.border": null,
        "predictive": null,
        "predictive.background": null,
        "predictive.border": null,
        "renamed": null,
        "renamed.background": null,
        "renamed.border": null,
        "success": null,
        "success.background": null,
        "success.border": null,
        "unreachable": null,
        "unreachable.background": null,
        "unreachable.border": null,
        "warning": "${yellow}",
        "warning.background": "${bg}",
        "warning.border": null,
        "players": [
          {
            "cursor": "${fg}",
            "background": "${fg}",
            "selection": null
          }
        ],
        "syntax": {
          "attribute": {
            "color": "${cyan}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "boolean": {
            "color": "${blue}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "comment": {
            "color": "${grey}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "comment.doc": {
            "color": "${grey}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "constant": {
            "color": "${fg}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "constructor": {
            "color": "${cyan}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "emphasis": {
            "color": "${orange}",
            "background_color": null,
            "font_style": "italic",
            "font_weight": null
          },
          "emphasis.strong": {
            "color": "${orange}",
            "background_color": null,
            "font_style": null,
            "font_weight": 700
          },
          "function": {
            "color": "${blue}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "keyword": {
            "color": "${orange}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "number": {
            "color": "${orange}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "operator": {
            "color": "${purple}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "punctuation": {
            "color": "${pink}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "punctuation.bracket": {
            "color": "${pink}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "punctuation.delimiter": {
            "color": "${pink}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "punctuation.list_marker": {
            "color": "${pink}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "punctuation.special": {
            "color": "${pink}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "string": {
            "color": "${green}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "string.escape": {
            "color": "${fg}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "string.regex": {
            "color": "${green}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "string.special": {
            "color": "${green}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "string.special.symbol": {
            "color": "${green}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "tag": {
            "color": "${cyan}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "text.literal": {
            "color": "${green}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "type": {
            "color": "${purple}",
            "background_color": null,
            "font_style": "italic",
            "font_weight": null
          },
          "variable": {
            "color": "${fg}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          },
          "variable.special": {
            "color": "${purple}",
            "background_color": null,
            "font_style": null,
            "font_weight": null
          }
        }
      }
    }
  ]
}
]==]

    return util.parse_extra_template(template, extended_colors)
end

return M
