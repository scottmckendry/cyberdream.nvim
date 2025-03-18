local config = require("cyberdream.config")
local M = {}

--- @alias RGB table {number, number, number}
--- @alias HSL table {number, number, number}

--- Notify the user with a message.
--- @param message string
--- @param level? "info" | "warn" | "error"
--- @param title? string
function M.notify(message, level, title)
    level = level or "info"
    title = title or "cyberdream.nvim"
    local level_int = level == "info" and 2 or level == "warn" and 3 or 4

    vim.notify(message, level_int, { title = title })
end

--- Set the syntax highlighting for a group.
--- @param syntax table
function M.syntax(syntax)
    for group, colors in pairs(syntax) do
        vim.api.nvim_set_hl(0, group, colors)
    end
end

--- Convert a hex color to an RGB color.
--- @param hex string "#rrggbb"
--- @return RGB
function M.hex_to_rgb(hex)
    return {
        tonumber(hex:sub(2, 3), 16),
        tonumber(hex:sub(4, 5), 16),
        tonumber(hex:sub(6, 7), 16),
    }
end

--- Convert an RGB color to a hex color.
--- @param rgb RGB
--- @return string
function M.rgb_to_hex(rgb)
    return string.format("#%02x%02x%02x", rgb[1], rgb[2], rgb[3])
end

--- Convert an HSL color to RGB.
--- @param HSL HSL
--- @return RGB
function M.hsl_to_rgb(HSL)
    local h, s, l = HSL[1] / 360, HSL[2] / 100, HSL[3] / 100
    local r, g, b

    if s == 0 then
        r, g, b = l, l, l
    else
        local function hue_to_rgb(p, q, t)
            if t < 0 then
                t = t + 1
            end
            if t > 1 then
                t = t - 1
            end
            if t < 1 / 6 then
                return p + (q - p) * 6 * t
            end
            if t < 1 / 2 then
                return q
            end
            if t < 2 / 3 then
                return p + (q - p) * (2 / 3 - t) * 6
            end
            return p
        end

        local q = l < 0.5 and l * (1 + s) or l + s - l * s
        local p = 2 * l - q
        r = hue_to_rgb(p, q, h + 1 / 3)
        g = hue_to_rgb(p, q, h)
        b = hue_to_rgb(p, q, h - 1 / 3)
    end

    return { r * 255, g * 255, b * 255 }
end

--- Convert an RGB color to HSL.
--- @param RGB RGB
--- @return HSL
function M.rgb_to_hsl(RGB)
    local r, g, b = RGB[1] / 255, RGB[2] / 255, RGB[3] / 255
    local max, min = math.max(r, g, b), math.min(r, g, b)
    local h, s, l

    l = (max + min) / 2

    if max == min then
        h, s = 0, 0
    else
        local d = max - min
        s = l > 0.5 and d / (2 - max - min) or d / (max + min)
        if max == r then
            h = (g - b) / d + (g < b and 6 or 0)
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end

    return { h * 360, s * 100, l * 100 }
end

--- Desaturate an HSL color based on a float. 0 is fully desaturated, 1 is the original color.
--- @param HSL HSL
--- @param weight number
--- @return HSL
function M.desaturate(HSL, weight)
    weight = weight or 0.5
    HSL[2] = HSL[2] * weight
    return HSL
end

--- Desaturate a hex color based on a float. 0 is fully desaturated, 1 is the original color.
function M.desaturate_hex(hex, weight)
    local rgb = M.hex_to_rgb(hex)
    local hsl = M.rgb_to_hsl(rgb)
    local desaturated_hsl = M.desaturate(hsl, weight)
    local desaturated_rgb = M.hsl_to_rgb(desaturated_hsl)
    return string.format("#%02x%02x%02x", desaturated_rgb[1], desaturated_rgb[2], desaturated_rgb[3])
end

--- Apply saturation to a table of colors.
--- @param colors cyberdream.Palette
--- @param weight number
function M.apply_saturation(colors, weight)
    if weight >= 1 then
        return colors
    end

    if weight < 0 then
        weight = 0
    end

    local desaturated_colors = {}
    for k, v in pairs(colors) do
        desaturated_colors[k] = M.desaturate_hex(v, weight)
    end
    return desaturated_colors
end

--- Load the colorscheme.
--- @param theme table
function M.load(theme)
    -- only needed to clear when not the default colorscheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "cyberdream"

    M.syntax(theme.highlights)
end

--- Blend two colors together based on a weight.
--- @param color1 string
--- @param color2 string
--- @param weight? number
--- @return string
function M.blend(color1, color2, weight)
    weight = weight or 0.5

    local rgb1 = M.hex_to_rgb(color1)
    local rgb2 = M.hex_to_rgb(color2)
    local rgb_blended = {}
    for i = 1, 3 do
        rgb_blended[i] = math.floor(rgb1[i] * weight + rgb2[i] * (1 - weight))
    end

    return string.format("#%02x%02x%02x", rgb_blended[1], rgb_blended[2], rgb_blended[3])
end

--- Remove an element from a table.
--- @param table table
--- @param index number
--- @return table
function M.remove(table, index)
    local new_table = {}
    for i = 1, #table do
        if i ~= index then
            new_table[#new_table + 1] = table[i]
        end
    end

    return new_table
end

--- Parse a template string with a given table of colors.
--- @param template string
--- @param t table
--- @return string
function M.parse_extra_template(template, t)
    for k, v in pairs(t) do
        template = template:gsub("%${" .. k .. "}", v)
    end

    return template
end

--- Override options with a new table of values.
--- @param new_opts cyberdream.Config
--- @return cyberdream.Config
function M.set_options(new_opts)
    local opts = vim.g.cyberdream_opts
    vim.g.cyberdream_opts = vim.tbl_deep_extend("force", opts, new_opts)

    return vim.g.cyberdream_opts
end

--- Apply options to the colorscheme.
--- @param opts cyberdream.Config
function M.apply_options(opts)
    -- Update the colorscheme
    config.setup(opts)
    vim.cmd("colorscheme cyberdream")
end

--- Toggle the theme variant between "default" and "light".
--- @return string new variant
function M.toggle_theme_variant()
    local opts = vim.g.cyberdream_opts
    -- Handle the "auto" variant without overwriting the value in opts.
    if opts.variant == "auto" then
        return M.toggle_theme_auto()
    end

    opts.variant = opts.variant == "default" and "light" or "default"
    M.set_options(opts)
    M.apply_options(opts)

    return opts.variant
end

--- Used for toggling the theme variant when the variant is set to "auto". Uses the 'set background' command to toggle between 'light' and 'dark'.
--- @return string new variant
function M.toggle_theme_auto()
    local variant = vim.o.background
    if variant == "dark" then
        variant = "light"
    else
        variant = "dark"
    end
    vim.cmd(":set background=" .. variant)
    return variant == "dark" and "default" or "light"
end

--- Toggle theme for lualine
function M.toggle_lualine_theme()
    if package.loaded["lualine"] == nil then
        return
    end

    package.loaded["lualine.themes.cyberdream"] = nil
    local lualine_opts = require("lualine").get_config()
    local lualine_theme = require("lualine.themes.cyberdream")
    lualine_opts.options.theme = lualine_theme
    require("lualine").setup(lualine_opts)
end

return M
