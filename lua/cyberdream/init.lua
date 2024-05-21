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
    util.toggle_lualine_theme(new_variant)
    vim.api.nvim_exec_autocmds("User", { pattern = "CyberdreamToggleMode", data = new_variant })
end, {})

return M
