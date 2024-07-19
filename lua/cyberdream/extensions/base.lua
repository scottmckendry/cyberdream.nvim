local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        Comment = { fg = t.grey, italic = opts.italic_comments },
        ColorColumn = { bg = t.bgHighlight },
        Conceal = { fg = t.grey },
        Cursor = { fg = t.bg, bg = t.fg },
        ICursor = { fg = t.bg, bg = t.fg },
        CursorIM = { fg = t.bg, bg = t.fg },
        CursorColumn = { bg = t.bgHighlight },
        CursorLine = { bg = t.bgHighlight },
        Directory = { fg = t.blue },
        DiffAdd = { bg = util.blend(t.bg_solid, t.green, 0.8) },
        DiffChange = { bg = util.blend(t.bg_solid, t.blue, 0.8) },
        DiffDelete = { bg = util.blend(t.bg_solid, t.red, 0.8) },
        DiffText = { bg = util.blend(t.bg_solid, t.orange, 0.8) },
        Added = { fg = t.green },
        Removed = { fg = t.red },
        EndOfBuffer = { fg = t.bg },
        ErrorMsg = { fg = t.red },
        VertSplit = { fg = t.bgHighlight, bg = t.bg },
        WinSeparator = { fg = t.bgHighlight, bg = t.bg },
        Folded = { fg = t.grey, bg = t.bg },
        FoldColumn = { fg = t.grey, bg = t.bg },
        SignColumn = { fg = t.grey, bg = t.bg },
        SignColumnSB = { fg = t.grey, bg = t.bg },
        Substitute = { fg = t.red, bg = t.bgHighlight },
        LineNr = { fg = util.blend(t.bgHighlight, t.fg, 0.9) },
        CursorLineNr = { fg = t.grey },
        MatchParen = { fg = t.pink, bg = t.bgHighlight },
        ModeMsg = { fg = t.fg },
        MsgArea = { fg = t.fg },
        MoreMsg = { fg = t.blue },
        NonText = { fg = util.blend(t.bg_solid, t.grey, 0.55) },
        Normal = { fg = t.fg, bg = t.bg },
        NormalNC = { fg = t.fg, bg = t.bg },
        NormalFloat = { fg = t.fg, bg = t.bg },
        FloatTitle = { fg = t.cyan, bg = t.bg },
        FloatBorder = { fg = t.bgHighlight, bg = t.bg },
        Pmenu = { fg = t.fg, bg = t.bg },
        PmenuSel = { fg = t.fg, bg = t.bgHighlight },
        PmenuSbar = { fg = t.bg, bg = t.bgHighlight },
        PmenuThumb = { fg = t.bg, bg = t.bgHighlight },
        Question = { fg = t.yellow },
        QuickFixLine = { bg = t.bgHighlight },
        Search = { fg = t.bgAlt, bg = t.fg },
        IncSearch = { fg = t.bgAlt, bg = t.cyan },
        CurSearch = { fg = t.bgAlt, bg = t.cyan },
        SpecialKey = { fg = t.grey },
        SpellBad = { fg = t.red, undercurl = true },
        SpellCap = { fg = t.yellow, undercurl = true },
        SpellLocal = { fg = t.blue, undercurl = true },
        SpellRare = { fg = t.purple, undercurl = true },
        StatusLine = { fg = t.fg, bg = t.bg },
        StatusLineNC = { fg = t.grey, bg = t.bg },
        TabLine = { fg = t.grey, bg = t.bg },
        TabLineFill = { fg = t.grey, bg = t.bgHighlight },
        TabLineSel = { fg = t.fg, bg = t.bgHighlight },
        WinBar = { fg = t.grey, bg = t.bg },
        WinBarNC = { fg = t.grey, bg = t.bg },
        Title = { fg = t.fg },
        Visual = { bg = t.bgHighlight },
        VisualNOS = { bg = t.bgHighlight },
        WarningMsg = { fg = t.orange },
        Whitespace = { fg = t.grey },
        WildMenu = { fg = t.bg, bg = t.blue },

        Constant = { fg = t.pink },
        String = { fg = t.green },
        Character = { fg = t.green },
        Boolean = { fg = t.cyan },
        Number = { fg = t.orange },

        Identifier = { fg = t.fg },
        Function = { fg = t.blue },
        Statement = { fg = t.magenta },
        Operator = { fg = t.purple },
        Keyword = { fg = t.orange },
        PreProc = { fg = t.cyan },
        Label = { fg = t.orange },

        Type = { fg = t.purple },

        Special = { fg = t.pink },
        Delimiter = { fg = t.fg },

        Debug = { fg = t.orange },

        Underlined = { underline = true },
        Bold = { bold = true },
        Italic = { italic = true },

        Error = { fg = t.red },
        Todo = { fg = t.purple, bold = true },

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
        markdownH2 = { fg = t.cyan, bold = true },
        markdownH3 = { fg = t.blue, bold = true },
        markdownH4 = { fg = t.purple, bold = true },
        markdownH5 = { fg = t.magenta, bold = true },
        markdownH6 = { fg = t.green, bold = true },
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

        LspInfoBorder = { fg = t.bg },

        -- TreeSitter Context
        TreeSitterContext = { bg = util.blend(t.bgAlt, t.cyan, 0.9) },
        TreeSitterContextLineNumber = { fg = util.blend(t.bgHighlight, t.fg) },

        -- TreeSitter Specific
        ["@variable"] = { fg = t.fg },
        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.type"] = { fg = t.orange, italic = true },
        ["@type.builtin"] = { fg = util.blend(t.purple, t.pink, 0.65) },

        -- TreeSitter Markup
        ["@markup.strong"] = { fg = t.pink, bold = true },
        ["@markup.italic"] = { fg = t.blue, italic = true },
        ["@markup.list.unchecked"] = { fg = t.magenta, bold = true },
        ["@markup.list.checked"] = { fg = t.green, bold = true },
        ["@markup.link.label"] = { link = "Label" },
        ["@markup.link.label.markdown_inline"] = { fg = t.cyan },
        ["@markup.link.markdown_inline"] = { fg = t.blue },
        ["@markup.link.url"] = { fg = t.blue, underline = true },
        ["@markup.quote"] = { link = "Comment" },
    }

    return highlights
end
return M
