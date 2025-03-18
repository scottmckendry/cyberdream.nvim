local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

---@param variant? string
function M.setup(variant)
    local config = require("cyberdream.config")
    local opts = config.options

    if variant then
        opts.variant = variant
    end

    local theme = {}
    ---@type cyberdream.Palette
    local t = colors.default
    if opts.variant == "light" then
        ---@type cyberdream.Palette
        t = colors.light
    end

    if opts.variant == "auto" then
        if vim.o.background == "light" then
            ---@type cyberdream.Palette
            t = colors.light
        end
    end

    -- Apply user defined saturation
    t = util.apply_saturation(t, opts.saturation)

    -- Override colors with user defined colors
    ---@type cyberdream.Palette
    t = vim.tbl_deep_extend("force", t, opts.colors)

    t.bg_solid = t.bg ~= "NONE" and t.bg or t.bg_alt
    if opts.transparent then
        t.bg = "NONE"
    end

    if opts.hide_fillchars then
        vim.opt.fillchars:append({
            horiz = " ",
            horizup = " ",
            horizdown = " ",
            vert = " ",
            vertleft = " ",
            vertright = " ",
            verthoriz = " ",
            eob = " ",
        })
    else
        vim.opt.fillchars:append({
            eob = " ",
        })
    end

    if opts.terminal_colors then
        vim.g.terminal_color_0 = t.bg
        vim.g.terminal_color_8 = t.bg_alt

        vim.g.terminal_color_7 = t.fg
        vim.g.terminal_color_15 = t.grey

        vim.g.terminal_color_1 = t.red
        vim.g.terminal_color_9 = t.red

        vim.g.terminal_color_2 = t.green
        vim.g.terminal_color_10 = t.green

        vim.g.terminal_color_3 = t.yellow
        vim.g.terminal_color_11 = t.yellow

        vim.g.terminal_color_4 = t.blue
        vim.g.terminal_color_12 = t.blue

        vim.g.terminal_color_5 = t.purple
        vim.g.terminal_color_13 = t.purple

        vim.g.terminal_color_6 = t.cyan
        vim.g.terminal_color_14 = t.cyan
    end

    -- Load base theme
    theme.highlights = require("cyberdream.extensions.base").get(opts, t)

    -- Load enabled extensions
    local extensions = opts.extensions or {}
    for extension, enabled in pairs(extensions) do
        if enabled then
            local ext = require("cyberdream.extensions." .. extension)
            theme.highlights = vim.tbl_deep_extend("force", theme.highlights, ext.get(opts, t))
        end
    end

    -- Parse user defined overrides and apply them
    local overrides = opts.overrides or opts.highlights
    if type(overrides) == "function" then
        overrides = overrides(t)
    end
    theme.highlights = vim.tbl_extend("force", theme.highlights, overrides or {})

    return theme
end

return M
