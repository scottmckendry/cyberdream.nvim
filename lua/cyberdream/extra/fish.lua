local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format a color for use in fish.
--- @param hex string: The hex color to format. Must be in the format "#RRGGBB".
local function format_color(hex)
    return string.sub(hex, 2)
end

--- Iterate over the colors in a table and format them.
--- @param t table: The table of colors to format.
local function format_colors(t)
    local formatted = {}
    for k, v in pairs(t) do
        formatted[k] = format_color(v)
    end
    return formatted
end

--- Generate the theme for fish.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = format_colors(colors[variant])
    t.pastel_pink = format_color(util.blend(colors[variant].fg, colors[variant].pink))
    t.turquoise = format_color(util.blend(colors[variant].green, colors[variant].cyan, 0.3))
    local template = [==[
# name: 'cyberdream'
# url: 'https://github.com/scottmckendry/cyberdream.nvim'
# preferred_background: ${bg}

fish_color_normal ${fg}
fish_color_command ${cyan}
fish_color_param ${pastel_pink}
fish_color_keyword ${green}
fish_color_quote ${yellow}
fish_color_redirection ${blue}
fish_color_end ${purple}
fish_color_comment ${grey}
fish_color_error ${red}
fish_color_gray ${grey}
fish_color_selection --background=${bgHighlight}
fish_color_search_match --background=${bgHighlight}
fish_color_option ${yellow}
fish_color_operator ${blue}
fish_color_escape ${pastel_pink}
fish_color_autosuggestion ${grey}
fish_color_cancel ${red}
fish_color_cwd ${orange}
fish_color_user ${turquoise}
fish_color_host ${green}
fish_color_host_remote ${yellow}
fish_color_status ${red}
fish_pager_color_progress ${grey}
fish_pager_color_prefix ${blue}
fish_pager_color_completion ${fg}
fish_pager_color_description ${grey}
]==]

    return util.parse_extra_template(template, t)
end

return M
