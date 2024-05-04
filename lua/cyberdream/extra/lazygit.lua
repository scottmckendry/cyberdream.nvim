local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate the theme for lazygit
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
# yaml-language-server: $schema=https://raw.githubusercontent.com/jesseduffield/lazygit/master/schema/config.json
# cyberdream theme for lazygit
gui:
    border: rounded
    theme:
        activeBorderColor:
            - "${cyan}"
        inactiveBorderColor:
            - "${grey}"
        searchingActiveBorderColor:
            - "${magenta}"
        optionsTextColor:
            - "${bgHighlight}"
        selectedLineBgColor:
            - "${bgHighlight}"
        cherryPickedCommitBgColor:
            - "${bgHighlight}"
        cherryPickedCommitFgColor:
            - "${pink}"
        unstagedChangesColor:
            - "${orange}"
        defaultFgColor:
            - "${fg}"
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
