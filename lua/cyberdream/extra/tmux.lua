local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for tmux.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
# cyberdream theme for tmux (catppuccin)
thm_bg="${bg_alt}"
thm_fg="${fg}"
thm_cyan="${cyan}"
thm_black="${bg_highlight}"
thm_gray="${bg_highlight}"
thm_magenta="${magenta}"
thm_pink="${pink}"
thm_red="${red}"
thm_green="${green}"
thm_yellow="${yellow}"
thm_blue="${blue}"
thm_orange="${orange}"
thm_black4="${grey}"
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
