local ts = require("cyberdream.treesitter")
local M = {}

---@param theme Theme
function M.load(theme)
    -- only needed to clear when not the default colorscheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "cyberdream"

    if ts.new_style() then
        for group, colors in pairs(ts.defaults) do
            if not theme.highlights[group] then
                M.highlight(group, colors)
            end
        end
    end

    M.syntax(theme.highlights)

    -- vim.api.nvim_set_hl_ns(M.ns)
    if theme.config.terminal_colours then
        M.terminal(theme.colours)
    end

    M.autocmds(theme.config)
end

return M
