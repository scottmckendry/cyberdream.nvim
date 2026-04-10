local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Build a table of "<name>_r/_g/_b" float strings (sRGB components in [0,1])
--- from a palette of "#rrggbb" hex colors.
local function to_components(palette)
    local out = {}
    for k, hex in pairs(palette) do
        local rgb = util.hex_to_rgb(hex)
        out[k .. "_r"] = string.format("%g", rgb[1] / 255)
        out[k .. "_g"] = string.format("%g", rgb[2] / 255)
        out[k .. "_b"] = string.format("%g", rgb[3] / 255)
    end
    return out
end

local function color_block(name, t, key)
    return string.format(
        "\t<key>%s</key>\n\t<dict>\n"
            .. "\t\t<key>Color Space</key>\n\t\t<string>sRGB</string>\n"
            .. "\t\t<key>Red Component</key>\n\t\t<real>%s</real>\n"
            .. "\t\t<key>Green Component</key>\n\t\t<real>%s</real>\n"
            .. "\t\t<key>Blue Component</key>\n\t\t<real>%s</real>\n"
            .. "\t</dict>",
        name,
        t[key .. "_r"],
        t[key .. "_g"],
        t[key .. "_b"]
    )
end

--- Generate cyberdream theme for iTerm2.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = to_components(colors[variant])

    local ansi = { "bg", "red", "green", "yellow", "blue", "purple", "cyan", "fg",
                   "bg_highlight", "red", "green", "yellow", "blue", "purple", "cyan", "fg" }
    local named = {
        { "Background Color",   "bg" },
        { "Foreground Color",   "fg" },
        { "Bold Color",         "fg" },
        { "Cursor Color",       "fg" },
        { "Cursor Text Color",  "bg" },
        { "Selection Color",    "bg_highlight" },
        { "Selected Text Color","fg" },
    }

    local parts = {
        '<?xml version="1.0" encoding="UTF-8"?>',
        '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">',
        '<plist version="1.0">',
        "<dict>",
    }
    for i, key in ipairs(ansi) do
        parts[#parts + 1] = color_block("Ansi " .. (i - 1) .. " Color", t, key)
    end
    for _, entry in ipairs(named) do
        parts[#parts + 1] = color_block(entry[1], t, entry[2])
    end
    parts[#parts + 1] = "</dict>\n</plist>"
    return table.concat(parts, "\n")
end

return M
