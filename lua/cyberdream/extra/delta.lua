local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for https://dandavison.github.io/delta
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
[delta "${name}"]
	blame-palette = "${bg} ${palette_bg_1} ${palette_bg_2} ${palette_bg_3} ${palette_bg_4}}"
	commit-decoration-style = "${grey}" bold box ul
	${variant} = true
	file-decoration-style = "${grey}"
	file-style = "${fg}"
	hunk-header-decoration-style = "${grey}" box ul
	hunk-header-file-style = bold
	hunk-header-line-number-style = bold "${lightgray}"
	hunk-header-style = file line-number syntax
	line-numbers-left-style = "${grey}"
	line-numbers-minus-style = bold "${red}"
	line-numbers-plus-style = bold "${green}"
	line-numbers-right-style = "${grey}"
	line-numbers-zero-style = "${grey}"
	minus-emph-style = bold syntax "${minus_emph}"
	minus-style = syntax "${minus}"
	plus-emph-style = bold syntax "${plus_emph}"
	plus-style = syntax "${plus}"
  map-styles = \
    bold purple => syntax "${map_style_purple}", \
    bold blue   => syntax "${map_style_blue}", \
    bold cyan   => syntax "${map_style_cyan}", \
    bold yellow => syntax "${map_style_yellow}"
  # Should match the name of the bat theme
	syntax-theme = ${name}
]==]

    local theme = vim.fn.copy(colors[variant])

    local function generate_palette(hex, steps, lightness_step, colorname)
        local rgb = util.hex_to_rgb(hex)
        local hsl = util.rgb_to_hsl(rgb)
        for i = 0, steps - 1 do
            local new_hsl = { hsl[1], hsl[2], math.min(hsl[3] + i * lightness_step, 100) }
            local new_rgb = util.hsl_to_rgb(new_hsl)
            local color = util.rgb_to_hex({
                math.floor(new_rgb[1]),
                math.floor(new_rgb[2]),
                math.floor(new_rgb[3]),
            })
            theme["palette_" .. colorname .. "_" .. (i + 1)] = color
        end
    end

    -- Add palette bg colors
    generate_palette(theme.bg_alt, 4, variant == "default" and 10 or -10, "bg")

    -- Add lightgray
    local base_color = variant == "default" and theme.fg or theme.bg
    theme.lightgray = util.blend(theme.grey, base_color, 0.8)

    -- Add minus colors
    theme.minus_emph = util.blend(theme.bg, theme.red, "default" and 0.6 or 0.8)
    theme.minus = util.blend(theme.bg, theme.red, "default" and 0.8 or 0.6)

    -- Add plus colors
    theme.plus_emph = util.blend(theme.bg, theme.green, "default" and 0.6 or 0.8)
    theme.plus = util.blend(theme.bg, theme.green, "default" and 0.8 or 0.6)

    -- Add map style colors
    theme.map_style_purple = util.blend(theme.bg, theme.purple, variant == "default" and 0.6 or 0.8)
    theme.map_style_blue = util.blend(theme.bg, theme.blue, variant == "default" and 0.6 or 0.8)
    theme.map_style_cyan = util.blend(theme.bg, theme.cyan, variant == "default" and 0.6 or 0.8)
    theme.map_style_yellow = util.blend(theme.bg, theme.yellow, variant == "default" and 0.6 or 0.8)

    -- Theme structure
    theme.name = variant == "default" and "cyberdream" or "cyberdream-light"
    theme.variant = variant == "default" and "dark" or "light"

    return util.parse_extra_template(template, theme)
end

return M
