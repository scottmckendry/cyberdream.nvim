local colors = require("cyberdream.colors").light
local opts = require("cyberdream.config").options
local cyberdream = {}

if opts.transparent then
    colors.bg = "NONE"
end

cyberdream.normal = {
    a = { fg = colors.blue, bg = colors.bg },
    b = { fg = colors.cyan, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    x = { fg = colors.fg, bg = colors.bg },
    y = { fg = colors.magenta, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}
cyberdream.insert = {
    a = { fg = colors.green, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}
cyberdream.visual = {
    a = { fg = colors.magenta, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}
cyberdream.terminal = {
    a = { fg = colors.orange, bg = colors.bg },
    z = { fg = colors.grey, bg = colors.bg },
}

return cyberdream
