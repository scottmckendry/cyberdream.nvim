local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local neogit = require("neogit")
    local highlights = {
        neogit.setup({
            highlight = {
                bg0 = t.bg,
                bg1 = t.bgAlt,
                bg2 = t.grey,
                bg3 = t.fg,
                grey = t.grey,
                white = t.fg,
                red = t.red,
                bg_red = t.red,
                line_red = t.red,
                orange = t.orange,
                bg_orange = t.orange,
                yellow = t.yellow,
                bg_yellow = t.yellow,
                green = t.green,
                bg_green = t.green,
                line_green = t.green,
                cyan = t.cyan,
                bg_cyan = t.cyan,
                blue = t.blue,
                bg_blue = t.blue,
                purple = t.purple,
                md_purple = t.purple,
            },
        }),
    }

    return highlights
end

return M
