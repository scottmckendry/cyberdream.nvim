local M = {}

---@class CyberdreamHighlight
---@field fg? string
---@field bg? string
---@field sp? string
---@field bold? boolean
---@field italic? boolean
---@field underline? boolean
---@field strikethrough? boolean

---@alias Colors table<CyberdreamPalette|CyberdreamPalette|string, string>

---@alias CyberdreamOverrideFn fun(palette: CyberdreamPalette): CyberdreamHighlight

---@class extensions
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

---@class Config
---@field transparent? boolean
---@field variant? "default" | "light" | "auto"
---@field saturation? number
---@field colors? CyberdreamPalette
---@field highlights? table<string, CyberdreamHighlight>
---@field overrides? CyberdreamOverrideFn
---@field italic_comments? boolean
---@field hide_fillchars? boolean
---@field borderless_pickers? boolean
---@field terminal_colors? boolean
---@field cache? boolean
---@field extensions? extensions
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

---@type Config
M.options = {}

---@param options Config|nil
function M.setup(options)
    options = options or {}

    -- Handle deprecated options  TODO: Remove post v5.0.0 release
    ---@diagnostic disable: undefined-field
    if options.borderless_telescope ~= nil then
        vim.defer_fn(function()
            vim.notify(
                "The 'borderless_telescope' is deprecated!\n\nUse 'borderless_pickers' instead.",
                3,
                { title = "cyberdream.nvim" }
            )
        end, 1000)
        options.borderless_pickers = options.borderless_telescope
    end

    if options.theme then
        vim.defer_fn(function()
            vim.notify(
                "The 'theme' table is deprecated!\n\nMove any 'theme' options to the main 'opts' table instead.",
                3,
                { title = "cyberdream.nvim" }
            )
        end, 1000)

        if options.theme.variant then
            options.variant = options.theme.variant
        end
        if options.theme.saturation then
            options.saturation = options.theme.saturation
        end
        if options.theme.colors then
            options.colors = options.theme.colors
        end
        if options.theme.highlights then
            options.highlights = options.theme.highlights
        end
        if options.theme.overrides then
            options.overrides = options.theme.overrides
        end
    end
    ---@diagnostic enable: undefined-field

    M.options = vim.tbl_deep_extend("force", {}, default_options, options)
    vim.g.cyberdream_opts = M.options
end

M.setup()

return M
