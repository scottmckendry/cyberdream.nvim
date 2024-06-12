local theme = require("cyberdream.theme")
local config = require("cyberdream.config")
local util = require("cyberdream.util")

local M = {}

function M.load()
    util.load(theme.setup())
end

M.setup = config.setup

M.colorscheme = M.load

vim.api.nvim_create_user_command("CyberdreamToggleMode", function()
    local new_variant = util.toggle_theme_variant()
    util.toggle_lualine_theme()
    vim.api.nvim_exec_autocmds("User", { pattern = "CyberdreamToggleMode", data = new_variant })
end, {})

-- autocmd runs togle_lualine_theme when background option is changed. checks if the colorscheme is 'cyberdream' and the variant is 'auto' before executing.
vim.api.nvim_create_autocmd("OptionSet", {
    pattern = "background",
    callback = function()
        if vim.g.cyberdream_opts.theme.variant ~= "auto" or vim.fn.execute("colorscheme"):find("cyberdream") == nil then
            return
        end
        util.toggle_lualine_theme()
    end,
})

return M
