local config = require("cyberdream.config")
local util = require("cyberdream.util")

local M = {}
local cache_file = vim.fn.stdpath("cache") .. "/cyberdream_cache.lua"

local function gen_hl_opts_string(opts)
    local opts_string = ""
    for opt, value in pairs(opts) do
        local value_str = ((type(value) == "string") and "'" .. value .. "'") or tostring(value)
        opts_string = opts_string .. opt .. " = " .. value_str .. ", "
    end
    return opts_string
end

local function gen_highlights_string(highlights)
    local highlights_string = ""
    for group, opts in pairs(highlights) do
        local opts_string = gen_hl_opts_string(opts)
        highlights_string = highlights_string .. "vim.api.nvim_set_hl(0, '" .. group .. "', {" .. opts_string .. "})\n"
    end
    return highlights_string
end

local function gen_fillchars_string()
    local fillchars_string = "vim.opt.fillchars:append({\n"
    for key, value in pairs(vim.opt.fillchars:get()) do
        fillchars_string = fillchars_string .. "  " .. key .. " = '" .. value .. "',\n"
    end
    fillchars_string = fillchars_string .. "})\n"
    return fillchars_string
end

local function gen_terminal_colors_string()
    local terminal_colors_string = ""
    for i = 0, 15 do
        terminal_colors_string = terminal_colors_string
            .. "vim.g.terminal_color_"
            .. i
            .. " = '"
            .. vim.g["terminal_color_" .. i]
            .. "'\n"
    end
    return terminal_colors_string
end

--- build a cache file for a configured cyberdream theme
--- @param theme table
M.build = function(theme)
    local cache = io.open(cache_file, "w")
    if not cache then
        util.notify("Failed to open cache file", "error")
        return
    end

    cache:write(gen_highlights_string(theme.highlights))

    if config.options.hide_fillchars then
        cache:write(gen_fillchars_string())
    end

    if config.options.terminal_colors then
        cache:write(gen_terminal_colors_string())
    end

    cache:write("vim.g.colors_name = 'cyberdream'\n")
    cache:close()

    util.notify("Cache file written to " .. cache_file)
end

--- load a cache file for a configured cyberdream theme
M.load = function()
    local cache = loadfile(cache_file)
    if not cache then
        local notify = vim.defer_fn(function()
            util.notify("Cache file not found, run :CyberdreamBuildCache to generate", "warn")
        end, 1000)
        return notify
    end

    if cache then
        cache()
    end
end

M.clear = function()
    os.remove(cache_file)
    util.notify("Cache file removed")
end

return M
