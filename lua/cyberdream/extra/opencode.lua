local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for opencode
--- @param variant string: variant name, e.g. "dark", "light"
function M.generate(variant)
    local c = colors[variant]
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
    "purple": "${purple}"
  },
  "theme": {
    "primary": "cyan",
    "secondary": "purple",
    "accent": "pink",
    "error": "red",
    "warning": "orange",
    "success": "green",
    "info": "cyan",
    "text": "fg",
    "textMuted": "grey",
    "background": "bg",
    "backgroundPanel": "bg_alt",
    "backgroundElement": "bg_highlight",
    "border": "grey",
    "borderActive": "blue",
    "borderSubtle": "bg_highlight",
    "diffAdded": "green",
    "diffRemoved": "red",
    "diffContext": "bg_alt",
    "diffHunkHeader": "blue",
    "diffHighlightAdded": "green",
    "diffHighlightRemoved": "red",
    "diffAddedBg": "bg_alt",
    "diffRemovedBg": "bg_alt",
    "diffContextBg": "bg",
    "diffLineNumber": "grey",
    "diffAddedLineNumberBg": "bg_alt",
    "diffRemovedLineNumberBg": "bg_highlight",
    "markdownText": "fg",
    "markdownHeading": "orange",
    "markdownLink": "cyan",
    "markdownLinkText": "blue",
    "markdownCode": "cyan",
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
