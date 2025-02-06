local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Format a color for use in gitui
--- @param hex string: The hex color to formatted. Must be in the format "#RRGGBB".
local function format_color(hex)
    local r = tonumber(string.sub(hex, 2, 3), 16)
    local g = tonumber(string.sub(hex, 4, 5), 16)
    local b = tonumber(string.sub(hex, 6, 7), 16)

    return string.format("%d, %d, %d", r, g, b)
end

--- Iterate over the colors in a table and format them.
--- @param t table: The table of colors to formaunformatted.
local function format_colors(t)
    local formatted = {}
    for k, v in pairs(t) do
        formatted[k] = format_color(v)
    end
    return formatted
end

--- Generate the theme for gitui
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local unformatted = colors[variant]
    unformatted.light_purple = util.blend(unformatted.fg, unformatted.purple)
    unformatted.grey_blue = util.blend(unformatted.grey, unformatted.blue)
    unformatted.dark_blue = util.blend(unformatted.bg_alt, unformatted.blue)
    unformatted.pastel_pink = util.blend(unformatted.fg, unformatted.pink)
    unformatted.turquoise = util.blend(unformatted.green, unformatted.cyan, 0.3)

    local t = format_colors(unformatted)
    local template = [==[
(
    selected_tab: Rgb(${cyan}), // bright cyan for highlight
    command_fg: Rgb(${fg}), // white for commands foreground
    selection_bg: Rgb(${bg_highlight}), // darker grey for selection background
    selection_fg: Rgb(${fg}), // white for selected text
    cmdbar_bg: Rgb(${bg}), // very dark grey almost black for command bar background
    cmdbar_extra_lines_bg: Rgb(${bg}), // very dark grey almost black for extra lines in command bar
    disabled_fg: Rgb(${grey}), // a soft grey for disabled elements, adjusted to fit the theme
    diff_line_add: Rgb(${green}), // vibrant green for added lines
    diff_line_delete: Rgb(${red}), // vibrant red for deleted lines
    diff_file_added: Rgb(${yellow}), // yellow for added files
    diff_file_removed: Rgb(${pink}), // light red for removed files
    diff_file_moved: Rgb(${purple}), // purple for moved files
    diff_file_modified: Rgb(${blue}), // blue for modified files
    commit_hash: Rgb(${light_purple}), // light purplish for commit hashes
    commit_time: Rgb(${grey_blue}), // greyish blue for commit time
    commit_author: Rgb(${blue}), // soft blue for author
    danger_fg: Rgb(${red}), // vibrant red for danger
    push_gauge_bg: Rgb(${blue}), // soft blue for push gauge background
    push_gauge_fg: Rgb(${dark_blue}), // dark blue for push gauge foreground
    tag_fg: Rgb(${pastel_pink}), // light pastel pink for tags
    branch_fg: Rgb(${turquoise}) // soft turquoise for branches
)
]==]

    return util.parse_extra_template(template, t)
end

return M
