local M = {}

---@class cyberdream.Highlight
---@field fg? string
---@field bg? string
---@field sp? string
---@field bold? boolean
---@field italic? boolean
---@field underline? boolean
---@field strikethrough? boolean

---@alias Colors table<cyberdream.Palette|cyberdream.Palette|string, string>

---@alias cyberdream.OverrideFn fun(palette: cyberdream.Palette): cyberdream.Highlight

---@class cyberdream.Extensions
---@field alpha? boolean
---@field blinkcmp? boolean
---@field cmp? boolean
---@field dashboard? boolean
---@field fzflua? boolean
---@field gitpad? boolean
---@field gitsigns? boolean
---@field grapple? boolean
---@field grugfar? boolean
---@field heirline? boolean
---@field helpview? boolean
---@field hop? boolean
---@field indentblankline? boolean
---@field kubectl? boolean
---@field lazy? boolean
---@field leap? boolean
---@field markdown? boolean
---@field markview? boolean
---@field mini? boolean
---@field neogit? boolean
---@field noice? boolean
---@field notify? boolean
---@field rainbow_delimiters? boolean
---@field snacks? boolean
---@field telescope? boolean
---@field treesitter? boolean
---@field treesittercontext? boolean
---@field trouble? boolean
---@field whichkey? boolean

---@class cyberdream.Config
---@field transparent? boolean
---@field variant? "default" | "light" | "auto"
---@field saturation? number
---@field colors? cyberdream.Palette
---@field highlights? table<string, cyberdream.Highlight>
---@field overrides? cyberdream.OverrideFn
---@field italic_comments? boolean
---@field hide_fillchars? boolean
---@field borderless_pickers? boolean
---@field terminal_colors? boolean
---@field cache? boolean
---@field extensions? cyberdream.Extensions
local default_options = {
    transparent = false,
    variant = "default",
    saturation = 1,
    ---@diagnostic disable-next-line: missing-fields
    colors = {},
    highlights = {},
    italic_comments = false,
    hide_fillchars = false,
    borderless_pickers = false,
    terminal_colors = true,
    cache = false,

    extensions = {
        alpha = true,
        blinkcmp = true,
        cmp = true,
        dashboard = true,
        fzflua = true,
        gitpad = true,
        gitsigns = true,
        grapple = true,
        grugfar = true,
        heirline = true,
        helpview = true,
        hop = true,
        indentblankline = true,
        kubectl = true,
        lazy = true,
        leap = true,
        markdown = true,
        markview = true,
        mini = true,
        noice = true,
        neogit = true,
        notify = true,
        rainbow_delimiters = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesittercontext = true,
        trouble = true,
        whichkey = true,
    },
}

---@type cyberdream.Config
M.options = {}

---@param options cyberdream.Config|nil
function M.setup(options)
    options = options or {}
    M.options = vim.tbl_deep_extend("force", {}, default_options, options)
    vim.g.cyberdream_opts = M.options
end

M.setup()

return M
