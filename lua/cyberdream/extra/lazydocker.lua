local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate the theme for lazydocker
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
# yaml-language-server: $schema=https://json.schemastore.org/lazydocker.json
# cyberdream theme for lazydocker
gui:
    border: rounded
    theme:
        activeBorderColor:
            - "${cyan}"
        inactiveBorderColor:
            - "${grey}"
        selectedLineBgColor:
            - "${bg_highlight}"
        optionsTextColor:
            - "${bg_highlight}"
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
