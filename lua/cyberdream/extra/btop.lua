local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for btop
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local c = vim.deepcopy(colors[variant])
    c.graph_mid = util.blend(c.cyan, c.purple, 0.5)
    local template = [==[
# cyberdream.nvim theme for btop
# https://github.com/scottmckendry/cyberdream.nvim

# Main background, empty for terminal default, need to be empty if you want transparent background
theme[main_bg]="${bg}"

# Main text color
theme[main_fg]="${fg}"

# Title color for boxes
theme[title]="${fg}"

# Highlight color for keyboard shortcuts
theme[hi_fg]="${blue}"

# Background color of selected item in processes box
theme[selected_bg]="${bg_highlight}"

# Foreground color of selected item in processes box
theme[selected_fg]="${fg}"

# Color of inactive/disabled text
theme[inactive_fg]="${grey}"

# Color of text appearing on top of graphs, i.e uptime and current network graph scaling
theme[graph_text]="${fg}"

# Background color of the percentage meters
theme[meter_bg]="${bg_highlight}"

# Misc colors for processes box including mini cpu graphs, details memory graph and details status text
theme[proc_misc]="${cyan}"

# Box outline color
theme[cpu_box]="${bg_highlight}"
theme[mem_box]="${bg_highlight}"
theme[net_box]="${bg_highlight}"
theme[proc_box]="${bg_highlight}"

# Box divider line and small boxes line color
theme[div_line]="${bg_highlight}"

# Graph colors (Cyan -> Purple)
theme[temp_start]="${cyan}"
theme[temp_mid]="${graph_mid}"
theme[temp_end]="${purple}"

theme[cpu_start]="${cyan}"
theme[cpu_mid]="${graph_mid}"
theme[cpu_end]="${purple}"

theme[free_start]="${cyan}"
theme[free_mid]="${graph_mid}"
theme[free_end]="${purple}"

theme[cached_start]="${cyan}"
theme[cached_mid]="${graph_mid}"
theme[cached_end]="${purple}"

theme[available_start]="${cyan}"
theme[available_mid]="${graph_mid}"
theme[available_end]="${purple}"

theme[used_start]="${cyan}"
theme[used_mid]="${graph_mid}"
theme[used_end]="${purple}"

theme[download_start]="${cyan}"
theme[download_mid]="${graph_mid}"
theme[download_end]="${purple}"

theme[upload_start]="${cyan}"
theme[upload_mid]="${graph_mid}"
theme[upload_end]="${purple}"

# Process box color gradient for threads, mem and cpu usage
theme[process_start]="${blue}"
theme[process_mid]="${purple}"
theme[process_end]="${magenta}"
]==]

    return util.parse_extra_template(template, c)
end

return M
