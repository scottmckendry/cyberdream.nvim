local colors = require("cyberdream.colors")

local util = require("cyberdream.util")

local M = {}
function M.setup()
    local config = require("cyberdream.config")
    local opts = config.options

    local theme = {}
    ---@type CyberdreamPalette
    local t = colors.default
    if opts.theme.variant == "light" then
        ---@type CyberdreamPalette
        t = colors.light
    end

    if opts.theme.variant == "auto" then
        if vim.o.background == "light" then
            ---@type CyberdreamPalette
            t = colors.light
        end
    end

    -- Override colors with user defined colors
    ---@type CyberdreamPalette
    t = vim.tbl_deep_extend("force", t, opts.theme.colors)

    t.bg_solid = t.bg ~= "NONE" and t.bg or t.bgAlt
    if opts.transparent then
        t.bg = "NONE"
    end

    if opts.hide_fillchars then
        vim.opt.fillchars:append({
            horiz = " ",
            horizup = " ",
            horizdown = " ",
            vert = " ",
            vertleft = " ",
            vertright = " ",
            verthoriz = " ",
            eob = " ",
        })
    else
        vim.opt.fillchars:append({
            eob = " ",
        })
    end

    theme.highlights = {
        Comment = { fg = t.grey, italic = opts.italic_comments },
        ColorColumn = { bg = t.bgHighlight },
        Conceal = { fg = t.grey },
        Cursor = { fg = t.bg, bg = t.fg },
        ICursor = { fg = t.bg, bg = t.fg },
        CursorIM = { fg = t.bg, bg = t.fg },
        CursorColumn = { bg = t.bgHighlight },
        CursorLine = { bg = (util.blend(t.bg_solid, t.bgHighlight, 0.65)) },
        Directory = { fg = t.blue },
        DiffAdd = { fg = t.green },
        DiffChange = { fg = t.cyan },
        DiffDelete = { fg = t.red },
        DiffText = { fg = t.blue },
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
        SpellBad = { fg = t.red, style = "undercurl" },
        SpellCap = { fg = t.yellow, style = "undercurl" },
        SpellLocal = { fg = t.blue, style = "undercurl" },
        SpellRare = { fg = t.purple, style = "undercurl" },
        StatusLine = { fg = t.fg, bg = t.bg },
        StatusLineNC = { fg = t.grey, bg = t.bg },
        TabLine = { fg = t.grey, bg = t.bg },
        TabLineFill = { fg = t.grey, bg = t.bgHighlight },
        TabLineSel = { fg = t.fg, bg = t.bgHighlight },
        WinBar = { fg = t.grey, bg = t.bg },
        WinBarNC = { fg = t.grey, bg = t.bg },
        Title = { fg = t.fg },
        Visual = { fg = t.bg, bg = t.bgHighlight },
        VisualNOS = { fg = t.bg, bg = t.bgHighlight },
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
        markdownH2 = { fg = t.cyan, bold = true },
        markdownH3 = { fg = t.blue, bold = true },
        markdownH4 = { fg = t.purple, bold = true },
        markdownH5 = { fg = t.magenta, bold = true },
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

        -- WhichKey
        WhichKey = { fg = t.cyan },
        WhichKeyGroup = { fg = t.blue },
        WhichKeyDesc = { fg = t.pink },
        WhichKeySeperator = { fg = t.bg },
        WhichKeyFloat = { bg = t.bg },
        WhichKeyValue = { fg = t.blue },

        -- Alpha
        AlphaShortcut = { fg = t.orange },
        AlphaHeader = { fg = t.purple },
        AlphaHeaderLabel = { fg = t.orange },
        AlphaFooter = { fg = t.cyan },
        AlphaButtons = { fg = t.blue },

        -- dashboard-nvim
        DashboardHeader = { fg = t.purple },
        DashboardFooter = { fg = t.cyan },
        -- dashboard-nvim: doom theme
        DashboardShortCut = { fg = t.orange },
        DashboardDesc = { fg = t.orange },
        DashboardKey = { fg = t.green },
        DashboardIcon = { fg = t.blue },
        -- dashboard-nvim: hyper theme
        DashboardProjectTitle = { fg = t.blue },
        DashboardProjectTitleIcon = { fg = t.orange },
        DashboardProjectIcon = { fg = t.orange },
        DashboardMruTitle = { fg = t.blue },
        DashboardMruIcon = { fg = t.orange },
        DashboardFiles = { fg = t.cyan },
        DashboardShortCutIcon = { fg = t.pink },

        -- Cmp
        CmpDocumentation = { fg = t.grey, bg = t.bg },
        CmpDocumentationBorder = { fg = t.grey, bg = t.bg },
        CmpGhostText = { fg = t.grey, bg = t.bg },

        CmpItemAbbr = { fg = t.fg, bg = t.bg },
        CmpItemAbbrDeprecated = { fg = t.grey, bg = t.bg, strikethrough = true },
        CmpItemAbbrMatch = { fg = t.purple, bg = t.bg },
        CmpItemAbbrMatchFuzzy = { fg = t.purple, bg = t.bg },

        CmpItemKindVariable = { fg = t.cyan, bg = t.bg },
        CmpItemKindInterface = { fg = t.cyan, bg = t.bg },
        CmpItemKindText = { fg = t.cyan, bg = t.bg },

        CmpItemKindFunction = { fg = t.pink, bg = t.bg },
        CmpItemKindMethod = { fg = t.pink, bg = t.bg },

        CmpItemKindKeyword = { fg = t.fg, bg = t.bg },
        CmpItemKindProperty = { fg = t.fg, bg = t.bg },
        CmpItemKindUnit = { fg = t.fg, bg = t.bg },

        CmpItemMenu = { fg = t.grey, bg = t.bg },
        CmpItemKindDefault = { fg = t.grey, bg = t.bg },

        -- Leap
        LeapMatch = { fg = t.fg, bg = t.magenta },
        LeapLabelPrimary = { fg = t.blue, bg = t.bg, bold = true },
        LeapLabelSecondary = { fg = t.green, bg = t.bg },
        LeapBackdrop = { fg = t.bgHighlight },

        -- Lazy
        LazyProgressDone = { bold = true, fg = t.magenta },
        LazyProgressTodo = { bold = true, fg = t.grey },

        -- Noice
        NoiceFormatProgressDone = { fg = t.bgAlt, bg = t.cyan },
        NoiceFormatProgressTodo = { fg = t.grey, bg = t.bgHighlight },

        NoiceLspProgressClient = { fg = t.blue },
        NoiceLspProgressSpinner = { fg = t.orange },
        NoiceLspProgressTitle = { fg = t.cyan },

        -- GitSigns
        GitSignsAdd = { fg = t.green },
        GitSignsChange = { fg = t.orange },
        GitSignsDelete = { fg = t.red },

        -- Rainbow Delimiters
        RainbowDelimiterRed = { fg = t.red },
        RainbowDelimiterOrange = { fg = t.orange },
        RainbowDelimiterYellow = { fg = t.yellow },
        RainbowDelimiterGreen = { fg = t.green },
        RainbowDelimiterBlue = { fg = t.blue },
        RainbowDelimiterViolet = { fg = t.purple },
        RainbowDelimiterCyan = { fg = t.cyan },

        -- Heirline
        HeirlineInactive = { bg = t.grey },
        HeirlineNormal = { bg = t.blue },
        HeirlineVisual = { bg = t.magenta },
        HeirlineReplace = { bg = t.red },
        HeirlineCommand = { bg = t.yellow },
        HeirlineInsert = { bg = t.green },
        HeirlineTerminal = { bg = t.cyan },

        -- Indent Blankline
        IblIndent = { fg = util.blend(t.bgHighlight, t.bgAlt, 0.3) },
        IblScope = { fg = t.bgHighlight },

        -- TreeSitter Context
        TreeSitterContext = { bg = util.blend(t.bgAlt, t.cyan, 0.9) },
        TreeSitterContextLineNumber = { fg = util.blend(t.bgHighlight, t.fg) },

        -- Grapple
        GrappleTitle = { fg = t.pink },
        GrappleFooter = { fg = t.grey },
        GrappleBorder = { fg = t.cyan },

        -- TreeSitter Specific
        ["@variable"] = { fg = t.fg },
        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@keyword"] = { link = "Keyword" },
        -- TreeSitter Markup
        ["@markup.strong"] = { fg = t.pink, bold = true },
        ["@markup.italic"] = { fg = t.blue, italic = true },
        ["@markup.list.unchecked"] = { fg = t.magenta, bold = true },
        ["@markup.list.checked"] = { fg = t.green, bold = true },
        ["@markup.link.label"] = { link = "Label" },
        ["@markup.link.label.markdown_inline"] = { fg = t.cyan },
        ["@markup.link.markdown_inline"] = { fg = t.blue },
        ["@markup.link.url"] = { fg = t.blue, style = "underline" },
    }

    if opts.terminal_colors then
        vim.g.terminal_color_0 = t.bg
        vim.g.terminal_color_8 = t.bgAlt

        vim.g.terminal_color_7 = t.fg
        vim.g.terminal_color_15 = t.grey

        vim.g.terminal_color_1 = t.red
        vim.g.terminal_color_9 = t.red

        vim.g.terminal_color_2 = t.green
        vim.g.terminal_color_10 = t.green

        vim.g.terminal_color_3 = t.yellow
        vim.g.terminal_color_11 = t.yellow

        vim.g.terminal_color_4 = t.blue
        vim.g.terminal_color_12 = t.blue

        vim.g.terminal_color_5 = t.purple
        vim.g.terminal_color_13 = t.purple

        vim.g.terminal_color_6 = t.cyan
        vim.g.terminal_color_14 = t.cyan
    end

    -- Load enabled extensions
    local extensions = opts.extensions or {}
    for extension, enabled in pairs(extensions) do
        if enabled then
            local ext = require("cyberdream.extensions." .. extension)
            theme.highlights = vim.tbl_deep_extend("force", theme.highlights, ext.get(opts, t))
        end
    end

    -- Parse user defined overrides and apply them
    local overrides = opts.theme.overrides or opts.theme.highlights
    if type(overrides) == "function" then
        overrides = overrides(t)
    end
    theme.highlights = vim.tbl_deep_extend("force", theme.highlights, overrides or {})

    return theme
end

return M
