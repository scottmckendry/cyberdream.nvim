local util = require("cyberdream.util")
local M = {}

--- Get extension configuration
--- @param opts cyberdream.Config
--- @param t cyberdream.Palette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        MiniAnimateCursor = { reverse = true, nocombine = true },
        MiniAnimateNormalFloat = { link = "NormalFloat" },

        MiniClueBorder = { link = "FloatBorder" },
        MiniClueDescGroup = { link = "DiagnosticFloatingWarn" },
        MiniClueDescSingle = { link = "NormalFloat" },
        MiniClueNextKey = { fg = t.green },
        MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
        MiniClueSeparator = { link = "DiagnosticFloatingInfo" },
        MiniClueTitle = { link = "FloatTitle" },

        MiniCompletionActiveParameter = { underline = true },

        MiniCursorword = { underline = true },
        MiniCursorwordCurrent = { underline = true },

        MiniDepsChangeAdded = { fg = t.green },
        MiniDepsChangeRemoved = { fg = t.red },
        MiniDepsHint = { link = "DiagnosticHint" },
        MiniDepsInfo = { link = "DiagnosticInfo" },
        MiniDepsMsgBreaking = { link = "DiagnosticWarn" },
        MiniDepsPlaceholder = { link = "Comment" },
        MiniDepsTitle = { link = "Title" },
        MiniDepsTitleError = { link = "ErrorMsg" },
        MiniDepsTitleSame = { link = "Boolean" },
        MiniDepsTitleUpdate = { link = "String" },

        MiniDiffOverAdd = { bg = util.blend(t.bg_solid, t.green, 0.8) },
        MiniDiffOverChange = { bg = util.blend(t.bg_solid, t.blue, 0.8) },
        MiniDiffOverContext = { bg = util.blend(t.bg_solid, t.orange, 0.8) },
        MiniDiffOverDelete = { bg = util.blend(t.bg_solid, t.red, 0.8) },
        MiniDiffSignAdd = { fg = t.green },
        MiniDiffSignChange = { fg = t.orange },
        MiniDiffSignDelete = { fg = t.red },

        MiniFilesBorder = { fg = t.bg_highlight },
        MiniFilesBorderModified = { fg = t.pink },
        MiniFilesCursorLine = { link = "CursorLine" },
        MiniFilesDirectory = { fg = t.blue },
        MiniFilesFile = { fg = t.fg },
        MiniFilesNormal = { link = "NormalFloat" },
        MiniFilesTitle = { fg = util.blend(t.bg_highlight, t.cyan, 0.7) },
        MiniFilesTitleFocused = { fg = t.cyan },

        MiniHipatternsFixme = { fg = t.bg_solid, bg = t.red, bold = true },
        MiniHipatternsHack = { fg = t.bg_solid, bg = t.yellow, bold = true },
        MiniHipatternsNote = { fg = t.bg_solid, bg = t.blue, bold = true },
        MiniHipatternsTodo = { fg = t.bg_solid, bg = t.cyan, bold = true },

        MiniIconsAzure = { fg = util.blend(t.cyan, t.fg, 0.3) },
        MiniIconsBlue = { fg = t.blue },
        MiniIconsCyan = { fg = t.cyan },
        MiniIconsGreen = { fg = t.green },
        MiniIconsGrey = { fg = t.fg },
        MiniIconsOrange = { fg = t.orange },
        MiniIconsPurple = { fg = t.purple },
        MiniIconsRed = { fg = t.red },
        MiniIconsYellow = { fg = t.yellow },

        MiniIndentscopeSymbol = { fg = t.grey },
        MiniIndentscopeSymbolOff = { fg = t.yellow },

        MiniJump = { link = "SpellRare" },

        MiniJump2dDim = { fg = t.grey },
        MiniJump2dSpot = { fg = t.orange, bold = true, nocombine = true },
        MiniJump2dSpotAhead = { fg = t.cyan, bg = t.bg, nocombine = true },
        MiniJump2dSpotUnique = { fg = t.yellow, bold = true, nocombine = true },

        MiniMapNormal = { link = "NormalFloat" },
        MiniMapSymbolCount = { link = "Special" },
        MiniMapSymbolLine = { fg = t.cyan },
        MiniMapSymbolView = { fg = t.blue },

        MiniNotifyBorder = { link = "FloatBorder" },
        MiniNotifyNormal = { link = "NormalFloat" },
        MiniNotifyTitle = { link = "FloatTitle" },

        MiniOperatorsExchangeFrom = { link = "IncSearch" },

        MiniPickBorder = { link = "FloatBorder" },
        MiniPickBorderBusy = { link = "DiagnosticFloatingWarn" },
        MiniPickBorderText = { link = "FloatTitle" },
        MiniPickIconDirectory = { link = "Directory" },
        MiniPickIconFile = { link = "MiniPickNormal" },
        MiniPickHeader = { link = "DiagnosticFloatingHint" },
        MiniPickMatchCurrent = { link = "CursorLine" },
        MiniPickMatchMarked = { bg = t.bg_highlight },
        MiniPickMatchRanges = { fg = t.orange },
        MiniPickNormal = { link = "NormalFloat" },
        MiniPickPreviewLine = { link = "CursorLine" },
        MiniPickPreviewRegion = { link = "IncSearch" },
        MiniPickPrompt = { link = "DiagnosticFloatingInfo" },

        MiniStarterCurrent = { nocombine = true },
        MiniStarterFooter = { link = "Comment" },
        MiniStarterHeader = { fg = t.cyan },
        MiniStarterInactive = { link = "Comment" },
        MiniStarterItem = { link = "Normal" },
        MiniStarterItemBullet = { link = "Delimiter" },
        MiniStarterItemPrefix = { link = "WarningMsg" },
        MiniStarterSection = { fg = t.blue },
        MiniStarterQuery = { link = "MoreMsg" },

        MiniStatuslineDevinfo = { link = "StatusLine" },
        MiniStatuslineFileinfo = { link = "MiniStatuslineDevinfo" },
        MiniStatuslineFilename = { link = "StatusLineNC" },
        MiniStatuslineInactive = { link = "StatusLineNC" },
        MiniStatuslineModeCommand = { fg = t.bg_solid, bg = t.yellow, bold = true },
        MiniStatuslineModeInsert = { fg = t.bg_solid, bg = t.green, bold = true },
        MiniStatuslineModeNormal = { fg = t.bg_solid, bg = t.blue, bold = true },
        MiniStatuslineModeOther = { fg = t.bg_solid, bg = t.cyan, bold = true },
        MiniStatuslineModeReplace = { fg = t.bg_solid, bg = t.red, bold = true },
        MiniStatuslineModeVisual = { fg = t.bg_solid, bg = t.magenta, bold = true },

        MiniSurround = { link = "IncSearch" },

        MiniTablineCurrent = { fg = t.fg, bg = t.bg_highlight, bold = true },
        MiniTablineFill = { link = "TabLineFill" },
        MiniTablineHidden = { fg = t.grey, bg = t.bg },
        MiniTablineModifiedCurrent = { fg = t.bg_highlight, bg = t.fg, bold = true },
        MiniTablineModifiedHidden = { fg = t.bg_solid, bg = t.grey },
        MiniTablineModifiedVisible = { fg = t.bg_highlight, bg = t.fg },
        MiniTablineTabpagesection = { link = "Search" },
        MiniTablineVisible = { fg = t.fg, bg = t.bg_highlight },

        MiniTestEmphasis = { bold = true },
        MiniTestFail = { fg = t.red, bold = true },
        MiniTestPass = { fg = t.green, bold = true },

        MiniTrailspace = { bg = t.red },
    }

    return highlights
end
return M
