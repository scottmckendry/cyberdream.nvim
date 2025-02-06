local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        TelescopeBorder = { fg = t.bg_highlight },
        TelescopePromptTitle = { fg = t.blue },
        TelescopeResultsTitle = { fg = t.cyan },
        TelescopePromptPrefix = { fg = t.pink },
        TelescopePreviewTitle = { fg = t.magenta },
        TelescopeSelection = { bg = t.bg_highlight },
        TelescopePromptCounter = { fg = t.pink },
        TelescopeMatching = { fg = t.cyan },

        -- Default links
        TelescopeNormal = { link = "NormalFloat" },
        TelescopeSelectionCaret = { link = "TelescopeSelection" },
        TelescopeMultiSelection = { link = "Type" },
        TelescopeMultiIcon = { link = "Identifier" },
        TelescopePreviewNormal = { link = "TelescopeNormal" },
        TelescopePromptNormal = { link = "TelescopeNormal" },
        TelescopeResultsNormal = { link = "TelescopeNormal" },
        TelescopePromptBorder = { link = "TelescopeBorder" },
        TelescopeResultsBorder = { link = "TelescopeBorder" },
        TelescopePreviewBorder = { link = "TelescopeBorder" },
        TelescopeTitle = { link = "TelescopeBorder" },
        TelescopePreviewLine = { link = "Visual" },
        TelescopePreviewMatch = { link = "Search" },
        TelescopePreviewPipe = { link = "Constant" },
        TelescopePreviewCharDev = { link = "Constant" },
        TelescopePreviewDirectory = { link = "Directory" },
        TelescopePreviewBlock = { link = "Constant" },
        TelescopePreviewLink = { link = "Special" },
        TelescopePreviewSocket = { link = "Statement" },
        TelescopePreviewRead = { link = "Constant" },
        TelescopePreviewWrite = { link = "Statement" },
        TelescopePreviewExecute = { link = "String" },
        TelescopePreviewHyphen = { link = "NonText" },
        TelescopePreviewSticky = { link = "Keyword" },
        TelescopePreviewSize = { link = "String" },
        TelescopePreviewUser = { link = "Constant" },
        TelescopePreviewGroup = { link = "Constant" },
        TelescopePreviewDate = { link = "Directory" },
        TelescopePreviewMessage = { link = "TelescopePreviewNormal" },
        TelescopePreviewMessageFillchar = { link = "TelescopePreviewMessage" },
        TelescopeResultsClass = { link = "Function" },
        TelescopeResultsConstant = { link = "Constant" },
        TelescopeResultsField = { link = "Function" },
        TelescopeResultsFunction = { link = "Function" },
        TelescopeResultsMethod = { link = "Method" },
        TelescopeResultsOperator = { link = "Operator" },
        TelescopeResultsStruct = { link = "Struct" },
        TelescopeResultsVariable = { link = "SpecialChar" },
        TelescopeResultsLineNr = { link = "LineNr" },
        TelescopeResultsIdentifier = { link = "Identifier" },
        TelescopeResultsNumber = { link = "Number" },
        TelescopeResultsComment = { link = "Comment" },
        TelescopeResultsSpecialComment = { link = "SpecialComment" },
        TelescopeResultsDiffChange = { link = "DiffChange" },
        TelescopeResultsDiffAdd = { link = "DiffAdd" },
        TelescopeResultsDiffDelete = { link = "DiffDelete" },
        TelescopeResultsDiffUntracked = { link = "NonText" },
    }

    if opts.borderless_pickers then
        highlights.TelescopeBorder = { fg = t.bg_alt, bg = t.bg_alt }
        highlights.TelescopeNormal = { bg = t.bg_alt }
        highlights.TelescopePreviewBorder = { fg = t.bg_alt, bg = t.bg_alt }
        highlights.TelescopePreviewNormal = { bg = t.bg_alt }
        highlights.TelescopePreviewTitle = { fg = t.bg_alt, bg = t.green, bold = true }
        highlights.TelescopeResultsBorder = { fg = t.bg_alt, bg = t.bg_alt }
        highlights.TelescopeResultsNormal = { bg = t.bg_alt }
        highlights.TelescopePromptPrefix = { fg = t.blue, bg = t.bg_alt }
        highlights.TelescopePromptCounter = { fg = t.cyan, bg = t.bg_alt }
        highlights.TelescopePromptTitle = { fg = t.bg_alt, bg = t.blue, bold = true }
        highlights.TelescopeResultsTitle = { fg = t.blue, bg = t.bg_alt, bold = true }
    end

    return highlights
end

return M
