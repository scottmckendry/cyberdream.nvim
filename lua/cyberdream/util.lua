local ts = require("cyberdream.treesitter")
local M = {}

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

function M.syntax(syntax)
    for group, colors in pairs(syntax) do
        M.highlight(group, colors)
    end
end

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

return M
