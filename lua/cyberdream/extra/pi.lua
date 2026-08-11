local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for pi.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local c = colors[variant]
    local suffix = variant == "default" and "" or "-" .. variant

    local template = [==[
{
    "$schema": "https://raw.githubusercontent.com/earendil-works/pi/main/packages/coding-agent/src/modes/interactive/theme/theme-schema.json",
    "name": "cyberdream${suffix}",
    "vars": {
        "bg": "${bg}",
        "bgAlt": "${bg_alt}",
        "bgHighlight": "${bg_highlight}",
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
    "colors": {
        "accent": "blue",
        "border": "blue",
        "borderAccent": "cyan",
        "borderMuted": "grey",
        "success": "green",
        "error": "red",
        "warning": "yellow",
        "muted": "grey",
        "dim": "grey",
        "text": "",
        "thinkingText": "grey",

        "selectedBg": "bgHighlight",
        "scrollbarThumb": "bgHighlight",
        "userMessageBg": "bgAlt",
        "userMessageText": "fg",
        "customMessageBg": "bgAlt",
        "customMessageText": "fg",
        "customMessageLabel": "cyan",
        "toolPendingBg": "bgAlt",
        "toolSuccessBg": "bgAlt",
        "toolErrorBg": "bgAlt",
        "toolTitle": "cyan",
        "toolOutput": "fg",

        "mdHeading": "orange",
        "mdLink": "cyan",
        "mdLinkUrl": "blue",
        "mdCode": "cyan",
        "mdCodeBlock": "fg",
        "mdCodeBlockBorder": "grey",
        "mdQuote": "grey",
        "mdQuoteBorder": "grey",
        "mdHr": "grey",
        "mdListBullet": "cyan",

        "toolDiffAdded": "green",
        "toolDiffRemoved": "red",
        "toolDiffContext": "grey",

        "syntaxComment": "grey",
        "syntaxKeyword": "magenta",
        "syntaxFunction": "blue",
        "syntaxVariable": "yellow",
        "syntaxString": "green",
        "syntaxNumber": "purple",
        "syntaxType": "cyan",
        "syntaxOperator": "pink",
        "syntaxPunctuation": "grey",

        "thinkingOff": "grey",
        "thinkingMinimal": "blue",
        "thinkingLow": "cyan",
        "thinkingMedium": "green",
        "thinkingHigh": "yellow",
        "thinkingXhigh": "orange",
        "thinkingMax": "red",

        "bashMode": "yellow"
    }
}
]==]

    local vars = vim.tbl_extend("force", colors[variant], { suffix = suffix })
    return util.parse_extra_template(template, vars)
end

return M
