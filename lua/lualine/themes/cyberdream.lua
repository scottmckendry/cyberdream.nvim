---@type cyberdream.Palette
local colors = require("cyberdream.colors").default
local opts = require("cyberdream.config").options

if opts.variant == "light" then
    colors = require("cyberdream.colors").light
end

if opts.variant == "auto" then
    if vim.o.background == "light" then
        colors = require("cyberdream.colors").light
    end
end

if opts.transparent then
    colors.bg = "NONE"
end

local cyberdream = {
    normal = {
        a = { fg = colors.blue, bg = colors.bg },
        b = { fg = colors.cyan, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
        x = { fg = colors.fg, bg = colors.bg },
        y = { fg = colors.magenta, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
    insert = {
        a = { fg = colors.green, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
    visual = {
        a = { fg = colors.magenta, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
    terminal = {
        a = { fg = colors.orange, bg = colors.bg },
        z = { fg = colors.grey, bg = colors.bg },
    },
}

return cyberdream
