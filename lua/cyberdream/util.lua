local ts = require("cyberdream.treesitter")
local config = require("cyberdream.config")
local M = {}

--- Sets the highlight group to the given table of colors.
--- @param group string
--- @param hl vim.api.keyset.highlight
function M.highlight(group, hl)
    group = ts.get(group)
    if not group then
        return
    end
    if hl.style then
        if type(hl.style) == "table" then
            hl = vim.tbl_extend("force", hl, hl.style)
        elseif hl.style:lower() ~= "none" then
            -- handle old string style definitions
            for s in string.gmatch(hl.style, "([^,]+)") do
                hl[s] = true
            end
        end
        hl.style = nil
    end
    vim.api.nvim_set_hl(0, group, hl)
end

--- Set the syntax highlighting for a group.
--- @param syntax table
function M.syntax(syntax)
    for group, colors in pairs(syntax) do
        M.highlight(group, colors)
    end
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

    if ts.new_style() then
        for group, colors in pairs(ts.defaults) do
            if not theme.highlights[group] then
                M.highlight(group, colors)
            end
        end
    end

    M.syntax(theme.highlights)
end

--- Blend two colors together based on a weight.
--- @param color1 string
--- @param color2 string
--- @param weight? number
--- @return string
function M.blend(color1, color2, weight)
    weight = weight or 0.5

    local rgb1 = { tonumber(color1:sub(2, 3), 16), tonumber(color1:sub(4, 5), 16), tonumber(color1:sub(6, 7), 16) }
    local rgb2 = { tonumber(color2:sub(2, 3), 16), tonumber(color2:sub(4, 5), 16), tonumber(color2:sub(6, 7), 16) }
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
--- @param new_opts Config
--- @return Config
function M.set_options(new_opts)
    local opts = vim.g.cyberdream_opts
    vim.g.cyberdream_opts = vim.tbl_deep_extend("force", opts, new_opts)

    return vim.g.cyberdream_opts
end

--- Apply options to the colorscheme.
--- @param opts Config
function M.apply_options(opts)
    -- Update the colorscheme
    config.setup(opts)
    vim.cmd("colorscheme cyberdream")
end

--- Toggle the theme variant between "default" and "light".
--- @return string new variant
function M.toggle_theme_variant()
    local opts = vim.g.cyberdream_opts
    opts.theme.variant = opts.theme.variant == "default" and "light" or "default"
    M.set_options(opts)
    M.apply_options(opts)

    return opts.theme.variant
end

--- Toggle theme for lualine
--- @param new_variant string "default" | "light"
function M.toggle_lualine_theme(new_variant)
    if package.loaded["lualine"] == nil then
        return
    end

    local lualine_opts = require("lualine").get_config()
    local lualine_theme = new_variant == "default" and require("lualine.themes.cyberdream")
        or require("lualine.themes.cyberdream-light")

    lualine_opts.options.theme = lualine_theme
    require("lualine").setup(lualine_opts)
end

return M
