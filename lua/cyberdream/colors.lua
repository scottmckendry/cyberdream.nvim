---@class CyberdreamPalette
---@field bg string
---@field bg_alt string
---@field bh_highlight string
---@field bg_solid? string
---@field fg string
---@field grey string
---@field blue string
---@field green string
---@field cyan string
---@field red string
---@field yellow string
---@field magenta string
---@field pink string
---@field orange string
---@field purple string

---@class CyberdreamColors
---@field default CyberdreamPalette
---@field light CyberdreamPalette
---@field muted CyberdreamPalette
local M = {}

M.default = {
    bg = "#16181a",
    bg_alt = "#1e2124",
    bh_highlight = "#3c4048",
    fg = "#ffffff",
    grey = "#7b8496",
    blue = "#5ea1ff",
    green = "#5eff6c",
    cyan = "#5ef1ff",
    red = "#ff6e5e",
    yellow = "#f1ff5e",
    magenta = "#ff5ef1",
    pink = "#ff5ea0",
    orange = "#ffbd5e",
    purple = "#bd5eff",
}

M.light = {
    bg = "#ffffff",
    bg_alt = "#eaeaea",
    bh_highlight = "#acacac",
    fg = "#16181a",
    grey = "#7b8496",
    blue = "#0057d1",
    green = "#008b0c",
    cyan = "#008c99",
    red = "#d11500",
    yellow = "#997b00",
    magenta = "#d100bf",
    pink = "#f40064",
    orange = "#d17c00",
    purple = "#a018ff",
}

M.cyberone = {
    bg = "#282c34",
    bg_alt = "#2c313a",
    bh_highlight = "#3e4451",
    fg = "#d7dae0",
    grey = "#5c6370",
    blue = "#61afef",
    green = "#98c379",
    cyan = "#56b6c2",
    red = "#e06c75",
    yellow = "#e5c07b",
    magenta = "#e395a3",
    pink = "#eca8e1",
    orange = "#d19a66",
    purple = "#c678dd",
}

return M
