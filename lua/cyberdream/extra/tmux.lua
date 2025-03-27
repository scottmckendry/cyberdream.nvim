local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for tmux.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
# --> Catppuccin (Cyberdream)
set -ogq @thm_bg "${bg}"
set -ogq @thm_fg "${fg}"

# Colors
set -ogq @thm_rosewater "${pink}"
set -ogq @thm_flamingo "${pink}"
set -ogq @thm_rosewater "${pink}"
set -ogq @thm_pink "${pink}"
set -ogq @thm_mauve "${magenta}"
set -ogq @thm_red "${red}"
set -ogq @thm_maroon "${orange}"
set -ogq @thm_peach "${orange}"
set -ogq @thm_yellow "${yellow}"
set -ogq @thm_green "${green}"
set -ogq @thm_teal "${cyan}"
set -ogq @thm_sky "${cyan}"
set -ogq @thm_sapphire "${cyan}"
set -ogq @thm_blue "${blue}"
set -ogq @thm_lavender "${purple}"

# Surfaces and overlays
set -ogq @thm_subtext_1 "${grey}"
set -ogq @thm_subtext_0 "${grey}"
set -ogq @thm_overlay_2 "${bg_highlight}"
set -ogq @thm_overlay_1 "${bg_highlight}"
set -ogq @thm_overlay_0 "${bg_highlight}"
set -ogq @thm_surface_2 "${bg_alt}"
set -ogq @thm_surface_1 "${bg_alt}"
set -ogq @thm_surface_0 "${bg_alt}"
set -ogq @thm_mantle "${bg_alt}"
set -ogq @thm_crust "${bg_alt}"
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M
