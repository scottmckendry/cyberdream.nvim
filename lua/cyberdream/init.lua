local theme = require("cyberdream.theme")
-- local config = require("cyberdream.config")
local util = require("cyberdream.util")

local M = {}

M.colorscheme = util.load(theme.setup())

return M
