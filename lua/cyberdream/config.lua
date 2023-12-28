local M = {}

---@class Config
local default_options = {
    transparent = false,
    italic_comments = false,
    hide_fillchars = false,
    borderless_telescope = true,

    theme = {
        colors = {},
        highlights = {},
    },
}

---@type Config
M.options = {}

---@param options Config|nil
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, default_options, options or {})
end

M.setup()

return M
