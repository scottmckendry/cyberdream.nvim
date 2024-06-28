local M = {}

---@class CyberdreamHighlight
---@field fg string
---@field bg string
---@field sp string
---@field bold boolean
---@field italic boolean
---@field underline boolean
---@field strikethrough boolean

---@alias Colors table<CyberdreamColorDefault|CyberdreamColorLight|string, string>
---@alias CyberdreamPalette CyberdreamColorLight|CyberdreamColorDefault|Colors

---@alias CyberdreamOverrideFn fun(palette: CyberdreamPalette): CyberdreamHighlight

---@class ThemeConfig
---@field variant? string | "'default'" | "'light'" | "'auto'"
---@field colors? CyberdreamPalette
---@field highlights? table<string, table<string, string>>
---@field overrides? CyberdreamOverrideFn

---@alias CyberdreamTelescopeStyle "nvchad" | "flat"

---@class extensions
---@field alpha? boolean
---@field cmp? boolean
---@field dashboard? boolean
---@field grapple? boolean
---@field mini? boolean
---@field notify? boolean
---@field telescope? boolean
---@field whichkey? boolean

---@class Config
---@field transparent? boolean
---@field italic_comments? boolean
---@field hide_fillchars? boolean
---@field borderless_telescope? boolean | { border: boolean, style: CyberdreamTelescopeStyle }
---@field terminal_colors? boolean
---@field theme? ThemeConfig
---@field extensions? extensions
local default_options = {
    transparent = false,
    italic_comments = false,
    hide_fillchars = false,
    borderless_telescope = true,
    terminal_colors = true,

    theme = {
        variant = "default",
        colors = {},
        highlights = {},
    },

    extensions = {
        alpha = true,
        cmp = true,
        dashboard = true,
        grapple = true,
        mini = true,
        notify = true,
        telescope = true,
        whichkey = true,
    },
}

---@type Config
M.options = {}

---@param options Config|nil
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, default_options, options or {})
    vim.g.cyberdream_opts = M.options
end

M.setup()

return M
