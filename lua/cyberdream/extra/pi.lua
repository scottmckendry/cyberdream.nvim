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
        "dim": "${_dim}",
        "text": "${_text}",
        "blue": "${blue}",
        "green": "${green}",
        "cyan": "${cyan}",
        "red": "${red}",
        "yellow": "${yellow}",
        "magenta": "${magenta}",
        "pink": "${pink}",
        "orange": "${orange}",
        "purple": "${purple}",
        "toolPendingBg": "${_tool_pending_bg}",
        "toolSuccessBg": "${_tool_success_bg}",
        "toolErrorBg": "${_tool_error_bg}",
        "customMsgBg": "${_custom_msg_bg}"
    },
    "colors": {
        "accent": "cyan",
        "border": "blue",
        "borderAccent": "cyan",
        "borderMuted": "dim",
        "success": "green",
        "error": "red",
        "warning": "yellow",
        "muted": "grey",
        "dim": "dim",
        "text": "text",
        "thinkingText": "grey",

        "selectedBg": "bgHighlight",
        "scrollbarThumb": "bgHighlight",
        "searchMatchBg": "bgHighlight",
        "searchMatchText": "text",
        "userMessageBg": "bgAlt",
        "userMessageText": "text",
        "customMessageBg": "customMsgBg",
        "customMessageText": "text",
        "customMessageLabel": "purple",
        "toolPendingBg": "toolPendingBg",
        "toolSuccessBg": "toolSuccessBg",
        "toolErrorBg": "toolErrorBg",
        "toolTitle": "text",
        "toolOutput": "grey",

        "mdHeading": "yellow",
        "mdLink": "blue",
        "mdLinkUrl": "dim",
        "mdCode": "cyan",
        "mdCodeBlock": "green",
        "mdCodeBlockBorder": "grey",
        "mdQuote": "grey",
        "mdQuoteBorder": "grey",
        "mdHr": "grey",
        "mdListBullet": "cyan",

        "toolDiffAdded": "green",
        "toolDiffRemoved": "red",
        "toolDiffContext": "grey",

        "syntaxComment": "green",
        "syntaxKeyword": "blue",
        "syntaxFunction": "yellow",
        "syntaxVariable": "cyan",
        "syntaxString": "orange",
        "syntaxNumber": "green",
        "syntaxType": "cyan",
        "syntaxOperator": "text",
        "syntaxPunctuation": "text",

        "thinkingOff": "dim",
        "thinkingMinimal": "grey",
        "thinkingLow": "blue",
        "thinkingMedium": "cyan",
        "thinkingHigh": "purple",
        "thinkingXhigh": "magenta",
        "thinkingMax": "pink",

        "bashMode": "green"
    },
    "export": {
        "pageBg": "${_export_page_bg}",
        "cardBg": "${_export_card_bg}",
        "infoBg": "${_export_info_bg}"
    }
}
]==]

    local vars = vim.tbl_extend("force", c, {
        suffix = suffix,
        _dim = util.blend(c.grey, c.bg, 0.65),
        _text = util.blend(c.fg, c.grey, 0.85),
        _tool_pending_bg = util.blend(c.bg, c.grey, 0.9),
        _tool_success_bg = util.blend(c.bg, c.green, 0.9),
        _tool_error_bg = util.blend(c.bg, c.red, 0.85),
        _custom_msg_bg = util.blend(c.bg, c.purple, 0.9),
        _export_page_bg = util.blend(c.bg, c.fg, 0.95),
        _export_card_bg = c.bg_alt,
        _export_info_bg = util.blend(c.bg, c.yellow, 0.85),
    })

    return util.parse_extra_template(template, vars)
end

return M
