local config = require("cyberdream.config")

local M = {}
local cache_file = vim.fn.stdpath("cache") .. "/cyberdream_cache.lua"

--- build a cache file for a configured cyberdream theme
--- @param theme table
M.build = function(theme)
    local cache = io.open(cache_file, "w")
    if not cache then
        error("Could not open cache file for writing")
    end

    for group, opts in pairs(theme.highlights) do
        local opts_string = ""
        for opt, value in pairs(opts) do
            local value_str = ((type(value) == "string") and "'" .. value .. "'") or tostring(value)
            opts_string = opts_string .. opt .. " = " .. value_str .. ", "
        end
        local line = "vim.api.nvim_set_hl(0, '" .. group .. "', {" .. opts_string .. "})"
        cache:write(line .. "\n")
    end

    if config.options.hide_fillchars then
        cache:write([[
vim.opt.fillchars:append({
    horiz = " ",
    horizup = " ",
    horizdown = " ",
    vert = " ",
    vertleft = " ",
    vertright = " ",
    verthoriz = " ",
    eob = " ",
})
        ]])
    end

    cache:write("vim.g.colors_name = 'cyberdream'\n")
    cache:close()

    vim.notify("Cache file written to " .. cache_file, 2, { title = "Cyberdream Cache" })
end

--- load a cache file for a configured cyberdream theme
M.load = function()
    local cache = loadfile(cache_file)
    if not cache then
        local notify = vim.defer_fn(function()
            vim.notify("Cache file not found. Run :CyberdreamBuildCache to generate it", 3)
        end, 1000)
        return notify
    end

    if cache then
        cache()
    end
end

M.clear = function()
    os.remove(cache_file)
    vim.notify("Cache file removed", 2, { title = "Cyberdream Cache" })
end

return M
