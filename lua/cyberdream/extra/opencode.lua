local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for opencode
--- @param variant string: variant name, e.g. "dark", "light"
function M.generate(variant)
    local c = colors[variant]
    c.diffAddedBg = util.blend(c.bg, c.green, 0.8)
    c.diffRemovedBg = util.blend(c.bg, c.red, 0.8)

    local template = [==[
{
  "$schema": "https://opencode.ai/theme.json",
  "defs": {
    "bg": "${bg}",
    "bg_alt": "${bg_alt}",
    "bg_highlight": "${bg_highlight}",
    "fg": "${fg}",
    "grey": "${grey}",
    "blue": "${blue}",
    "green": "${green}",
    "cyan": "${cyan}",
    "red": "${red}",
    "yellow": "${yellow}",
    "magenta": "${magenta}",
    "pink": "${pink}",
    "orange": "${orange}",
    "purple": "${purple}",
    "diffAddedBg": "${diffAddedBg}",
    "diffRemovedBg": "${diffRemovedBg}"
  },
  "theme": {
    "primary": "cyan",
    "secondary": "purple",
    "accent": "cyan",
    "error": "red",
    "warning": "orange",
    "success": "green",
    "info": "cyan",
    "text": "fg",
    "textMuted": "grey",
    "background": "bg",
    "backgroundPanel": "bg_alt",
    "backgroundElement": "bg_alt",
    "border": "grey",
    "borderActive": "blue",
    "borderSubtle": "bg_highlight",
    "diffAdded": "green",
    "diffRemoved": "red",
    "diffContext": "bg_alt",
    "diffHunkHeader": "blue",
    "diffHighlightAdded": "green",
    "diffHighlightRemoved": "red",
    "diffAddedBg": "diffAddedBg",
    "diffRemovedBg": "diffRemovedBg",
    "diffContextBg": "bg_alt",
    "diffLineNumber": "grey",
    "diffAddedLineNumberBg": "diffAddedBg",
    "diffRemovedLineNumberBg": "diffRemovedBg",
    "markdownText": "fg",
    "markdownHeading": "fg",
    "markdownLink": "blue",
    "markdownLinkText": "blue",
    "markdownCode": "grey",
    "markdownBlockQuote": "grey",
    "markdownEmph": "magenta",
    "markdownStrong": "orange",
    "markdownHorizontalRule": "grey",
    "markdownListItem": "blue",
    "markdownListEnumeration": "cyan",
    "markdownImage": "blue",
    "markdownImageText": "pink",
    "markdownCodeBlock": "bg_highlight",
    "syntaxComment": "grey",
    "syntaxKeyword": "orange",
    "syntaxFunction": "blue",
    "syntaxVariable": "fg",
    "syntaxString": "green",
    "syntaxNumber": "orange",
    "syntaxType": "purple",
    "syntaxOperator": "purple",
    "syntaxPunctuation": "fg"
  }
}
]==]
    return util.parse_extra_template(template, c)
end

return M
