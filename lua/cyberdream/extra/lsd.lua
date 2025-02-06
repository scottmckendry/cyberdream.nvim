local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for https://github.com/lsd-rs/lsd
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    function CreateDimColor(hex)
        return util.blend(hex, variant == "default" and colors[variant].bg or colors[variant].fg, 0.8)
    end

    function HexToAnsi(hex)
        -- Remove the leading "#" if present
        hex = hex:gsub("#", "")

        -- Extract the red, green, and blue components
        local r = tonumber(string.sub(hex, 1, 2), 16)
        local g = tonumber(string.sub(hex, 3, 4), 16)
        local b = tonumber(string.sub(hex, 5, 6), 16)

        -- Normalize the RGB values to a range of 0-5
        local ansi_r = math.floor(r / 51)
        local ansi_g = math.floor(g / 51)
        local ansi_b = math.floor(b / 51)

        -- Calculate the ANSI color code
        local ansi_code = 16 + (ansi_r * 36) + (ansi_g * 6) + ansi_b

        return ansi_code
    end

    -- Extend default hex colors with dimmed colors
    local extended_hex_colors = vim.fn.copy(colors[variant])
    for key, value in pairs(colors[variant]) do
        extended_hex_colors[key .. "Dim"] = CreateDimColor(value)
    end

    -- Create Ansi colors from extended hex colors
    local ansi_colors = {}
    for key, value in pairs(extended_hex_colors) do
        ansi_colors[key] = HexToAnsi(value)
    end

    local template = [==[
user: ${cyan}
group: ${blue}
permission:
  read: ${green}
  write: ${yellow}
  exec: ${red}
  exec-sticky: ${purple}
  no-access: ${grey}
  octal: ${cyanDim}
  acl: ${cyanDim}
  context: ${cyan}
date:
  hour-old: ${fgDim}
  day-old: ${grey}
  older: ${bg_highlight}
size:
  none: ${grey}
  small: ${green}
  medium: ${yellow}
  large: ${orange}
inode:
  valid: ${magenta}
  invalid: ${grey}
links:
  valid: ${magenta}
  invalid: ${grey}
tree-edge: ${grey}
git-status:
  default: ${grey}
  unmodified: ${grey}
  ignored: ${grey}
  new-in-index: ${greenDim}
  new-in-workdir: ${greenDim}
  typechange: ${yellowDim}
  deleted: ${redDim}
  renamed: ${greenDim}
  modified: ${yellowDim}
  conflicted: ${redDim}
]==]

    return util.parse_extra_template(template, ansi_colors)
end

return M
