local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for vim.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local t = colors[variant]

    local template = [==[
" cyberdream.vim - Cyberdream theme for Vim
" Maintainer: 0l3d
" Description: Cyberdream theme for Vim

highlight clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cyberdream"
set termguicolors

" ─────────────────────────────────────────────────────────────
" Core UI
" ─────────────────────────────────────────────────────────────
highlight Normal        guifg=${fg}        guibg=${bg}
highlight NormalNC      guifg=${fg}        guibg=${bg}
highlight Cursor        guifg=${bg}        guibg=${fg}
highlight CursorLine    guibg=${bg_highlight}
highlight CursorColumn  guibg=${bg_highlight}
highlight CursorLineNr  guifg=${grey}
highlight LineNr        guifg=${grey}
highlight ColorColumn   guibg=${bg_highlight}
highlight Visual        guibg=${bg_highlight}
highlight VisualNOS     guibg=${bg_highlight}
highlight MatchParen    guifg=${pink}      guibg=${bg_highlight}
highlight Search        guifg=${bg_alt}    guibg=${fg}
highlight IncSearch     guifg=${bg_alt}    guibg=${cyan}
highlight CurSearch     guifg=${bg_alt}    guibg=${cyan}
highlight Directory     guifg=${blue}
highlight VertSplit     guifg=${bg_highlight} guibg=${bg}
highlight WinSeparator  guifg=${bg_highlight} guibg=${bg}
highlight EndOfBuffer   guifg=${grey}

" ─────────────────────────────────────────────────────────────
" Popup / Float
" ─────────────────────────────────────────────────────────────
highlight NormalFloat   guifg=${fg}        guibg=${bg}
highlight FloatBorder   guifg=${bg_highlight} guibg=${bg}
highlight FloatTitle    guifg=${cyan}      guibg=${bg}

highlight Pmenu         guifg=${fg}        guibg=${bg}
highlight PmenuSel      guifg=${fg}        guibg=${bg_highlight}
highlight PmenuSbar     guifg=${bg}        guibg=${bg_highlight}
highlight PmenuThumb    guifg=${bg}        guibg=${bg_highlight}
highlight PmenuMatch    guifg=${cyan}      guibg=${bg_highlight}
highlight PmenuMatchSel guifg=${cyan}      guibg=${bg_highlight}

" ─────────────────────────────────────────────────────────────
" Diff
" ─────────────────────────────────────────────────────────────
highlight DiffAdd       guifg=${green}     guibg=${bg_highlight}
highlight DiffChange    guifg=${blue}      guibg=${bg_highlight}
highlight DiffDelete    guifg=${red}       guibg=${bg_highlight}
highlight DiffText      guifg=${orange}    guibg=${bg_highlight}

highlight Added         guifg=${green}
highlight Removed       guifg=${red}

" ─────────────────────────────────────────────────────────────
" Diagnostics / LSP
" ─────────────────────────────────────────────────────────────
highlight DiagnosticError           guifg=${red}
highlight DiagnosticWarn            guifg=${yellow}
highlight DiagnosticInfo            guifg=${blue}
highlight DiagnosticHint            guifg=${cyan}
highlight DiagnosticUnnecessary     guifg=${grey}

highlight DiagnosticVirtualTextError guifg=${red}
highlight DiagnosticVirtualTextWarn  guifg=${yellow}
highlight DiagnosticVirtualTextInfo  guifg=${blue}
highlight DiagnosticVirtualTextHint  guifg=${cyan}

highlight DiagnosticUnderlineError   gui=undercurl guisp=${red}
highlight DiagnosticUnderlineWarn    gui=undercurl guisp=${yellow}
highlight DiagnosticUnderlineInfo    gui=undercurl guisp=${blue}
highlight DiagnosticUnderlineHint    gui=undercurl guisp=${cyan}

highlight LspReferenceText          guibg=${bg_highlight}
highlight LspReferenceRead          guibg=${bg_highlight}
highlight LspReferenceWrite         guibg=${bg_highlight}
highlight LspSignatureActiveParameter guifg=${orange}
highlight LspCodeLens               guifg=${grey}
highlight LspInlayHint              guifg=${grey}

" ─────────────────────────────────────────────────────────────
" Syntax
" ─────────────────────────────────────────────────────────────
highlight Comment       guifg=${grey}      gui=italic
highlight Constant      guifg=${pink}
highlight String        guifg=${green}
highlight Character     guifg=${green}
highlight Boolean       guifg=${cyan}
highlight Number        guifg=${orange}

highlight Identifier    guifg=${fg}
highlight Function      guifg=${blue}

highlight Statement     guifg=${magenta}
highlight Operator      guifg=${purple}
highlight Keyword       guifg=${orange}
highlight PreProc       guifg=${cyan}
highlight Label         guifg=${orange}

highlight Type          guifg=${purple}
highlight Special       guifg=${pink}
highlight Delimiter     guifg=${fg}

highlight Debug         guifg=${orange}

highlight Error         guifg=${red}
highlight Todo          guifg=${purple} gui=bold

" ─────────────────────────────────────────────────────────────
" Markdown
" ─────────────────────────────────────────────────────────────
highlight markdownHeadingDelimiter guifg=${grey}
highlight markdownCode             guifg=${cyan}
highlight markdownCodeBlock        guifg=${cyan}
highlight markdownH1               guifg=${orange} gui=bold
highlight markdownH2               guifg=${cyan}   gui=bold
highlight markdownH3               guifg=${blue}   gui=bold
highlight markdownH4               guifg=${purple} gui=bold
highlight markdownH5               guifg=${magenta} gui=bold
highlight markdownH6               guifg=${green}  gui=bold
highlight markdownLinkText         guifg=${blue}   gui=underline

" ─────────────────────────────────────────────────────────────
" UI Bars
" ─────────────────────────────────────────────────────────────
highlight StatusLine     guifg=${fg}   guibg=${bg}
highlight StatusLineNC   guifg=${grey} guibg=${bg}
highlight TabLine        guifg=${grey} guibg=${bg}
highlight TabLineFill    guifg=${grey} guibg=${bg}
highlight TabLineSel     guifg=${fg}   guibg=${bg_highlight}
highlight WinBar         guifg=${fg}   guibg=${bg}
highlight WinBarNC       guifg=${grey} guibg=${bg}

" ─────────────────────────────────────────────────────────────
" Misc
" ─────────────────────────────────────────────────────────────
highlight SpecialKey     guifg=${grey}
highlight Whitespace     guifg=${bg_highlight}
highlight Question       guifg=${yellow}
highlight MoreMsg        guifg=${blue}
highlight WarningMsg     guifg=${orange}
highlight ErrorMsg       guifg=${red}
highlight QuickFixLine   guibg=${bg_highlight}
highlight qfLineNr       guifg=${grey}
highlight qfFileName     guifg=${blue}

]==]

    return util.parse_extra_template(template, t)
end

return M
