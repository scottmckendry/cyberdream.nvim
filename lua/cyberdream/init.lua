local theme = require("cyberdream.theme")
-- local config = require("cyberdream.config")
local util = require("cyberdream.util")

local M = {}

function M.load()
    util.load(theme.setup())
end

M.colorscheme = M.load

return M
