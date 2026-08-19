local M = {}

--- Reset all cyberdream modules for a clean slate between tests.
function M.reset_modules()
    for _, mod in ipairs({
        "cyberdream.config",
        "cyberdream.theme",
        "cyberdream.colors",
        "cyberdream.util",
    }) do
        package.loaded[mod] = nil
    end
end

--- Set up the plugin with given overrides and return the generated theme.
---@param overrides? table  Config overrides (merged with defaults)
---@param variant?   string Explicit variant to pass to theme.setup()
---@return table theme  The theme table (theme.highlights etc.)
function M.setup_theme(overrides, variant)
    M.reset_modules()
    local config = require("cyberdream.config")
    config.setup(overrides or {})
    local theme = require("cyberdream.theme")
    return theme.setup(variant)
end

return M
