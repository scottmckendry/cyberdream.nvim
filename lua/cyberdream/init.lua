local theme = require("cyberdream.theme")
local config = require("cyberdream.config")
local util = require("cyberdream.util")

local M = {}

---@param variant? string
function M.load(variant)
    if config.options.cache then
        require("cyberdream.cache").load()
        return
    end
    util.load(theme.setup(variant))
end

M.setup = config.setup
M.colorscheme = M.load

vim.api.nvim_create_user_command("CyberdreamToggleMode", function()
    local new_variant = util.toggle_theme_variant()
    util.toggle_lualine_theme()
    vim.api.nvim_exec_autocmds("User", { pattern = "CyberdreamToggleMode", data = new_variant })
end, {})

vim.api.nvim_create_user_command("CyberdreamBuildCache", function()
    require("cyberdream.cache").build(theme.setup())
end, {})

vim.api.nvim_create_user_command("CyberdreamClearCache", function()
    require("cyberdream.cache").clear()
end, {})

-- autocmd runs togle_lualine_theme when background option is changed. checks if the colorscheme is 'cyberdream' and the variant is 'auto' before executing.
vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function()
        if vim.g.cyberdream_opts.variant ~= "auto" or vim.fn.execute("colorscheme"):find("cyberdream") == nil then
            return
        end
        util.toggle_lualine_theme()
    end,
})

-- the following autocmd checks for lazy.nvim config files containing the string 'cyberdream' and rebuilds the theme's cache file (if enabled) when the file is saved.
-- useful for making changes to the themes config file without having to manually rebuild the cache or turn off the cache option.
vim.api.nvim_create_autocmd("User", {
    pattern = "LazyReload",
    callback = function(data)
        if not config.options.cache then
            return
        end

        local bufnr = data.buf
        local bufcontent = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)

        for _, line in ipairs(bufcontent) do
            if line:find("cyberdream") then
                require("cyberdream.cache").build(theme.setup())
                return
            end
        end
    end,
})

return M
