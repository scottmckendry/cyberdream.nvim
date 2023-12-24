local colors = require("cyberdream.colors")

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
        colors = colors.default,
    }

    local t = theme.colors

    theme.highlights = {
        Comment = { fg = t.grey },
        ColorColumn = { bg = t.none },
        Conceal = { fg = t.grey },
        Cursor = { fg = t.none, bg = t.fg },
        ICursor = { fg = t.none, bg = t.fg },
        CursorIM = { fg = t.none, bg = t.fg },
        CursorColumn = { bg = t.bgHighlight },
        CursorLine = { bg = t.bgHighlight },
        Directory = { fg = t.blue },
        DiffAdd = { fg = t.green },
        DiffChange = { fg = t.cyan },
        DiffDelete = { fg = t.red },
        DiffText = { fg = t.blue },
        EndOfBuffer = { fg = t.none },
        ErrorMsg = { fg = t.red },
        VertSplit = { fg = t.none, bg = t.none },
        WinSeperator = { fg = t.none, bg = t.none },
        Folded = { fg = t.grey, bg = t.bgHighlight },
        FoldColumn = { fg = t.grey, bg = t.bgHighlight },
        SignColumn = { fg = t.grey, bg = t.none },
        SignColumnSB = { fg = t.grey, bg = t.none },
        Substitute = { fg = t.red, bg = t.bgHighlight },
        LineNr = { fg = t.bgHighlight },
        CursorLineNr = { fg = t.grey },
        MatchParen = { fg = t.pink, bg = t.bgHighlight },
        ModeMsg = { fg = t.fg },
        MsgArea = { fg = t.fg },
        MoreMsg = { fg = t.fg },
        NonText = { fg = t.grey },
        Normal = { fg = t.fg, bg = t.none },
        NormalNC = { fg = t.fg, bg = t.none },
        NormalFloat = { fg = t.fg, bg = t.none },
        FloatTitle = { fg = t.fg, bg = t.bgHighlight },
        FloatBorder = { fg = t.grey, bg = t.bgHighlight },
        Pmenu = { fg = t.fg, bg = t.bgHighlight },
        PmenuSel = { fg = t.fg, bg = t.bgHighlight },
        PmenuSbar = { fg = t.none, bg = t.bgHighlight },
        PmenuThumb = { fg = t.none, bg = t.bgHighlight },
        Question = { fg = t.yellow },
        QuickFixLine = { fg = t.none, bg = t.blue },
        Search = { fg = t.bg, bg = t.fg },
        IncSearch = { fg = t.bg, bg = t.fg },
        CurSearch = { fg = t.bg, bg = t.cyan },
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
        Visual = { fg = t.none, bg = t.blue },
        VisualNOS = { fg = t.none, bg = t.blue },
        WarningMsg = { fg = t.orange },
        Whitespace = { fg = t.grey },
        WildMenu = { fg = t.none, bg = t.blue },

        Constant = { fg = t.fg },
        String = { fg = t.green },
        Character = { fg = t.green },

        Identifier = { fg = t.fg },
        Function = { fg = t.blue },
        Statement = { fg = t.magenta },
        Operator = { fg = t.purple },
        Keyword = { fg = t.orange },
        PreProc = { fg = t.cyan },

        Type = { fg = t.purple },

        Special = { fg = t.pink },

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
        mkdCodeStart = { fg = t.blue },
        mkdCodeEnd = { fg = t.blue },

        markdownHeadingDelimiter = { fg = t.grey },
        markdownCode = { fg = t.cyan },
        markdownCodeBlock = { fg = t.cyan },
        markdownH1 = { fg = t.orange, bold = true },
        markdownH2 = { fg = t.orange, bold = true },
        markdownLinkText = { fg = t.blue, underline = true },

        LspReferenceText = { bg = t.bgHighlight },
        LspReferenceRead = { bg = t.bgHighlight },
        LspReferenceWrite = { bg = t.bgHighlight },

        -- LspDiagnostics
        DiagnosticError = { fg = t.red },
        DiagnosticWarn = { fg = t.yellow },
        DiagnosticInfo = { fg = t.blue },
        DiagnosticHint = { fg = t.cyan },
        DiagnosticUnnecessary = { fg = t.grey },

        DiagnosiiucVirtualTextError = { fg = t.red },
        DiagnosticVirtualTextWarn = { fg = t.yellow },
        DiagnosticVirtualTextInfo = { fg = t.blue },
        DiagnosticVirtualTextHint = { fg = t.cyan },

        DiagnosticUnderlineError = { undercurl = true, sp = t.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = t.yellow },
        DiagnosticUnderlineInfo = { undercurl = true, sp = t.blue },
        DiagnosticUnderlineHint = { undercurl = true, sp = t.cyan },

        LspSignatureActiveParameter = { fg = t.orange },
        LspCodeLens = { fg = t.grey },
        LspInlayHint = { fg = t.grey },

        LspInfoBorder = { fg = t.none },

        -- WhichKey
        WhichKey = { fg = t.cyan },
        WhichKeyGroup = { fg = t.blue },
        WhichKeyDesc = { fg = t.pink },
        WhichKeySeperator = { fg = t.none },
        WhichKeyFloat = { bg = t.none },
        WhichKeyValue = { fg = t.blue },

        -- Alpha
        AlphaShortcut = { fg = t.orange },
        AlphaHeader = { fg = t.purple },
        AlphaHeaderLabel = { fg = t.orange },
        AlphaFooter = { fg = t.cyan },
        AlphaButtons = { fg = t.blue },

        -- Telescope
        TelescopeBorder = { fg = t.bg, bg = t.bg },
        TelescopeNormal = { bg = t.bg },
        TelescopePreviewBorder = { fg = t.bg, bg = t.bg },
        TelescopePreviewNormal = { bg = t.bg },
        TelescopePreviewTitle = { fg = t.bg, bg = t.green },
        TelescopePromptBorder = { fg = t.bg, bg = t.bg },
        TelescopePromptNormal = { fg = t.fg, bg = t.bg },
        TelescopePromptPrefix = { fg = t.red, bg = t.bg },
        TelescopePromptTitle = { fg = t.bg, bg = t.red },
        TelescopeResultsBorder = { fg = t.bg, bg = t.bg },
        TelescopeResultsNormal = { bg = t.bg },
        TelescopeResultsTitle = { fg = t.bg, bg = t.bg },

        -- Cmp
        CmpDocumentation = { fg = t.fg, bg = t.bg },
        CmpDocumentationBorder = { fg = t.bg, bg = t.bg },
        CmpGhostText = { fg = t.grey, bg = t.none },

        CmpItemAbbr = { fg = t.fg, bg = t.none },
        CmpItemAbbrDeprecated = { fg = t.grey, bg = t.none, strikethrough = true },
        CmpItemAbbrMatch = { fg = t.blue, bg = t.none },
        CmpItemAbbrMatchFuzzy = { fg = t.blue, bg = t.none },

        CmpItemMenu = { fg = t.grey, bg = t.none },

        CmpItemKindDefault = { fg = t.bgHighlight, bg = t.none },

        -- Leap
        LeapMatch = { fg = t.fg, bg = t.magenta },
        LeapLabelPrimary = { fg = t.blue, bg = t.none, bold = true },
        LeapLabelSecondary = { fg = t.green, bg = t.none },
        LeapBackdrop = { fg = t.bgHighlight },

        -- Lazy
        LazyProgressDone = { bold = true, fg = t.magenta },
        LazyProgressTodo = { bold = true, fg = t.grey },
    }

    ---@type table<string, table>
    theme.defer = {}

    return theme
end

return M
