local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format color from "#RRGGBB"" to "RRGGBB".
--- @param hex string: The hex color to format. Must be in the format "#RRGGBB".
--- @return string: in the format "RRGGBB"
local function format_color(hex)
    return string.sub(hex, 2)
end

--- Format colors.
--- @param color_table table: colors as table in the format "#RRGGBB"
--- @return table: with formatted colors in the format "RRGGBB"
local function format_colors(color_table)
    local formatted_colors = {}
    for k, v in pairs(color_table) do
        formatted_colors[k] = format_color(v)
    end
    return formatted_colors
end

--- Generate cyberdream theme for https://github.com/sharkdp/vivid (LS_COLORS)
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local formatted_colors = format_colors(colors[variant])
    local template = [==[
colors:
  black: "${bg}"
  green: "${green}"
  purple: "${purple}"
  red: "${red}"
  yellow: "${yellow}"
  cyan: "${cyan}"
  pink: "${pink}"
  orange: "${orange}"
  white: "${fg}"
  base01: "${grey}"

core:
  normal_text:
    foreground: white

  regular_file:
    foreground: white

  reset_to_normal:
    foreground: orange

  directory:
    foreground: purple

  symlink:
    foreground: cyan

  multi_hard_link: {}

  fifo:
    foreground: yellow
    background: black

  socket:
    foreground: pink
    background: black
    font-style: bold

  door:
    foreground: pink
    background: black
    font-style: bold

  block_device:
    foreground: yellow
    background: black
    font-style: bold

  character_device:
    foreground: yellow
    background: black
    font-style: bold

  broken_symlink:
    foreground: red
    background: black
    font-style: bold

  missing_symlink_target:
    foreground: red
    background: black

  setuid:
    foreground: white
    background: red

  setgid:
    foreground: black
    background: yellow

  file_with_capability: {}

  sticky_other_writable:
    foreground: black
    background: green

  other_writable:
    foreground: purple
    background: green

  sticky:
    foreground: white
    background: purple

  executable_file:
    foreground: green

text:
  special:
    foreground: orange

  todo:
    foreground: orange
    font-style: bold

  licenses:
    foreground: orange

  configuration:
    foreground: orange

  other:
    foreground: orange

markup:
  foreground: orange

programming:
  foreground: orange

media:
  image:
    foreground: pink

  audio:
    foreground: cyan

  video:
    foreground: orange
    font-style: bold

  fonts:
    foreground: orange

  3d:
    foreground: pink

office:
  foreground: orange

archives:
  foreground: red
  font-style: bold

executable:
  foreground: green

unimportant:
  foreground: base01
]==]

    return util.parse_extra_template(template, formatted_colors)
end

return M
