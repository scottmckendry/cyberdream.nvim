local M = {}

---@class CyberdreamHighlight
---@field fg string
---@field bg string
---@field sp string
---@field bold boolean
---@field italic boolean
---@field underline boolean
---@field strikethrough boolean

---@alias CyberdreamOverrideFn fun(palette: CyberdreamColorDefault|CyberdreamColorLight): CyberdreamHighlight

---@class ThemeConfig
---@field variant? string | "'default'" | "'light'" | "'auto'"
---@field colors? table<string, string>
---@field highlights? table<string, table<string, string>>
---@field overrides? CyberdreamOverrideFn

---@class Config
---@field transparent? boolean
---@field italic_comments? boolean
---@field hide_fillchars? boolean
---@field borderless_telescope? boolean
---@field terminal_colors? boolean
---@field theme? ThemeConfig
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
