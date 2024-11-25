local M = {}

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local borderless_telescope = opts.borderless_telescope
    local telescope_style = ""
    if type(opts.borderless_telescope) == "table" then
        borderless_telescope = not opts.borderless_telescope.border
        telescope_style = opts.borderless_telescope.style
    end

    local highlights = {
        TelescopeBorder = { fg = t.bgHighlight },
        TelescopePromptTitle = { fg = t.blue },
        TelescopeResultsTitle = { fg = t.cyan },
        TelescopePromptPrefix = { fg = t.pink },
        TelescopePreviewTitle = { fg = t.magenta },
        TelescopeSelection = { bg = t.bgHighlight },
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

    if borderless_telescope then
        highlights.TelescopeBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopeNormal = { bg = t.bgAlt }
        highlights.TelescopePreviewBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopePreviewNormal = { bg = t.bgAlt }
        highlights.TelescopePreviewTitle = { fg = t.bgAlt, bg = t.green, bold = true }
        highlights.TelescopePromptTitle = { fg = t.bgAlt, bg = t.red, bold = true }
        highlights.TelescopeResultsBorder = { fg = t.bgAlt, bg = t.bgAlt }
        highlights.TelescopeResultsNormal = { bg = t.bgAlt }
        highlights.TelescopeResultsTitle = { fg = t.bgAlt, bg = t.cyan }
        if telescope_style == "nvchad" then
            highlights.TelescopePromptBorder = { fg = t.bgHighlight, bg = t.bgHighlight }
            highlights.TelescopePromptNormal = { fg = t.fg, bg = t.bgHighlight }
            highlights.TelescopePromptPrefix = { fg = t.red, bg = t.bgHighlight }
        elseif telescope_style == "flat" then
            highlights.TelescopePromptPrefix = { fg = t.blue, bg = t.bgAlt }
            highlights.TelescopePromptCounter = { fg = t.cyan, bg = t.bgAlt }
            highlights.TelescopePromptTitle = { fg = t.bgAlt, bg = t.blue, bold = true }
            highlights.TelescopeResultsTitle = { fg = t.blue, bg = t.bgAlt, bold = true }
        end
    end

    return highlights
end

return M
