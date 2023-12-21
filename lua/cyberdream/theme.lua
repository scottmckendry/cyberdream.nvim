local colours = require("cyberdream.colours")

local M = {}
---
---@class Highlight
---@field fg string|nil
---@field bg string|nil
---@field sp string|nil
---@field style string|nil|Highlight
---@field link string|nil

---@alias Highlights table<string, Highlight>

---@return Theme
function M.setup()
    -- Placeholders for now, will add config options later
    local config = require("cyberdream.config")
    local options = config.options

    ---@class Theme
    ---@field highlights Highlights
    local theme = {
        config = options,
        colours = colours.default,
    }

    local t = theme.colours

    theme.highlights = {
        Comment = { fg = t.grey },
        ColorColumn = { bg = t.bg },
        Conceal = { fg = t.grey },
        Cursor = { fg = t.bg, bg = t.fg },
        ICursor = { fg = t.bg, bg = t.fg },
        CursorIM = { fg = t.bg, bg = t.fg },
        CursorColumn = { bg = t.bgHighlight },
        CursorLine = { bg = t.bgHighlight },
        Directory = { fg = t.blue },
        DiffAdd = { fg = t.green },
        DiffChange = { fg = t.yellow },
        DiffDelete = { fg = t.red },
        DiffText = { fg = t.blue },
        EndOfBuffer = { fg = t.bg },
        ErrorMsg = { fg = t.red },
        VertSplit = { fg = t.none, bg = t.bg },
        WinSeperator = { fg = t.none, bg = t.bg },
        Folded = { fg = t.grey, bg = t.bgHighlight },
        FoldColumn = { fg = t.grey, bg = t.bgHighlight },
        SignColumn = { fg = t.grey, bg = t.bg },
        SignColumnSB = { fg = t.grey, bg = t.bg },
        Substitute = { fg = t.red, bg = t.bgHighlight },
        LineNr = { fg = t.bgHighlight },
        CursorLineNr = { fg = t.grey },
        MatchParen = { fg = t.orange, bg = t.bgHighlight },
        ModeMsg = { fg = t.fg },
        MsgArea = { fg = t.fg },
        MoreMsg = { fg = t.fg },
        NonText = { fg = t.grey },
        Normal = { fg = t.fg, bg = t.bg },
        NormalNC = { fg = t.fg, bg = t.bg },
        NormalFloat = { fg = t.fg, bg = t.bgHighlight },
        FloatTitle = { fg = t.fg, bg = t.bgHighlight },
        FloatBorder = { fg = t.grey, bg = t.bgHighlight },
        Pmenu = { fg = t.fg, bg = t.bgHighlight },
        PmenuSel = { fg = t.fg, bg = t.bgHighlight },
        PmenuSbar = { fg = t.none, bg = t.bgHighlight },
        PmenuThumb = { fg = t.none, bg = t.bgHighlight },
        Question = { fg = t.yellow },
        QuickFixLine = { fg = t.bg, bg = t.blue },
        Search = { fg = t.bg, bg = t.yellow },
        IncSearch = { fg = t.bg, bg = t.yellow },
        CurSearch = { fg = t.bg, bg = t.yellow },
        SpecialKey = { fg = t.grey },
        SpellBad = { fg = t.red, style = "undercurl" },
        SpellCap = { fg = t.yellow, style = "undercurl" },
        SpellLocal = { fg = t.blue, style = "undercurl" },
        SpellRare = { fg = t.purple, style = "undercurl" },
        StatusLine = { fg = t.fg, bg = t.bgHighlight },
        StatusLineNC = { fg = t.grey, bg = t.bgHighlight },
        TabLine = { fg = t.grey, bg = t.bgHighlight },
        TabLineFill = { fg = t.grey, bg = t.bgHighlight },
        TabLineSel = { fg = t.fg, bg = t.bgHighlight },
        Title = { fg = t.fg },
        Visual = { fg = t.bg, bg = t.blue },
        VisualNOS = { fg = t.bg, bg = t.blue },
        WarningMsg = { fg = t.orange },
        Whitespace = { fg = t.grey },
        WildMenu = { fg = t.bg, bg = t.blue },

        Constant = { fg = t.blue },
        String = { fg = t.green },
        Character = { fg = t.green },

        Number = { fg = t.purple },
        Boolean = { fg = t.purple },
        Float = { fg = t.purple },

        Identifier = { fg = t.blue },
        Function = { fg = t.blue },
        Statement = { fg = t.magenta },
        Conditional = { fg = t.pink },
        Repeat = { fg = t.yellow },
        Label = { fg = t.yellow },
        Operator = { fg = t.pink },
        Keyword = { fg = t.orange },
        Exception = { fg = t.pink },
        PreProc = { fg = t.cyan },
        Include = { fg = t.cyan },
        Define = { fg = t.cyan },
        Macro = { fg = t.cyan },
        PreCondit = { fg = t.cyan },

        Type = { fg = t.yellow },
        StorageClass = { fg = t.yellow },
        Structure = { fg = t.yellow },
        Typedef = { fg = t.yellow },

        Special = { fg = t.orange },
        SpecialChar = { fg = t.orange },
        Tag = { fg = t.orange },
        Delimiter = { fg = t.orange },
        SpecialComment = { fg = t.orange },
        Debug = { fg = t.orange },

        Underlined = { style = "underline" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },

        Error = { fg = t.red },
        Todo = { fg = t.purple, style = "bold" },

        qfLineNr = { fg = t.grey },
        qfFileName = { fg = t.blue },

        htmlH1 = { fg = t.orange, bold = true },
        htmlH2 = { fg = t.orange, bold = true },

        mkdCodeDelimiter = { fg = t.grey },
        mkdCodeStart = { fg = t.grey },
        mkdCodeEnd = { fg = t.grey },
    }

    ---@type table<string, table>
    theme.defer = {}

    return theme
end

return M
