local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format a color for use in k9s.
--- @param hex string: The hex color to format
local function format_color(hex)
    return "'" .. hex .. "'"
end

--- Generate the theme for k9s.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = {}
    for k, v in pairs(colors[variant]) do
        t[k] = format_color(v)
    end

    local template = [==[
k9s:
  body:
    fgColor: ${fg}
    bgColor: default
    logoColor: ${purple}
  prompt:
    fgColor: ${fg}
    bgColor: default
    suggestColor: ${blue}
  help:
    fgColor: ${fg}
    bgColor: default
    sectionColor: ${green}
    keyColor: ${blue}
    numKeyColor: ${red}
  frame:
    title:
      fgColor: ${cyan}
      bgColor: default
      highlightColor: ${pink}
      counterColor: ${yellow}
      filterColor: ${green}
    border:
      fgColor: ${purple}
      focusColor: ${blue}
    menu:
      fgColor: ${fg}
      keyColor: ${blue}
      numKeyColor: ${red}
    crumbs:
      fgColor: ${bg}
      bgColor: default
      activeColor: ${orange}
    status:
      newColor: ${blue}
      modifyColor: ${blue}
      addColor: ${green}
      pendingColor: ${orange}
      errorColor: ${red}
      highlightColor: ${cyan}
      killColor: ${purple}
      completedColor: ${grey}
  info:
    fgColor: ${orange}
    sectionColor: ${fg}
  views:
    table:
      fgColor: ${fg}
      bgColor: default
      cursorFgColor: ${bg}
      cursorBgColor: ${bg_highlight}
      markColor: ${pink}
      header:
        fgColor: ${grey}
        bgColor: default
        sorterColor: ${cyan}
    xray:
      fgColor: ${fg}
      bgColor: default
      cursorColor: ${bg_highlight}
      cursorTextColor: ${bg}
      graphicColor: ${pink}
    charts:
      bgColor: default
      chartBgColor: default
      dialBgColor: default
      defaultDialColors:
        - ${green}
        - ${red}
      defaultChartColors:
        - ${green}
        - ${red}
      resourceColors:
        cpu:
          - ${purple}
          - ${blue}
        mem:
          - ${yellow}
          - ${orange}
    yaml:
      keyColor: ${blue}
      valueColor: ${fg}
      colonColor: ${grey}
    logs:
      fgColor: ${fg}
      bgColor: default
      indicator:
        fgColor: ${blue}
        bgColor: default
        toggleOnColor: ${green}
        toggleOffColor: ${grey}
  dialog:
    fgColor: ${yellow}
    bgColor: default
    buttonFgColor: ${bg}
    buttonBgColor: default
    buttonFocusFgColor: ${bg}
    buttonFocusBgColor: ${pink}
    labelFgColor: ${orange}
    fieldFgColor: ${fg}
]==]

    return util.parse_extra_template(template, t)
end

return M
