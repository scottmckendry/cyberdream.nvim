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
highlight Normal        guifg=#e5e5e5        guibg=#2b2c2e
highlight NormalNC      guifg=#e5e5e5        guibg=#2b2c2e
highlight Cursor        guifg=#2b2c2e        guibg=#e5e5e5
highlight CursorLine    guibg=#494c53
highlight CursorColumn  guibg=#494c53
highlight CursorLineNr  guifg=#7c8391
highlight LineNr        guifg=#7c8391
highlight ColorColumn   guibg=#494c53
highlight Visual        guibg=#494c53
highlight VisualNOS     guibg=#494c53
highlight MatchParen    guifg=#e56499      guibg=#494c53
highlight Search        guifg=#313436    guibg=#e5e5e5
highlight IncSearch     guifg=#313436    guibg=#64dae5
highlight CurSearch     guifg=#313436    guibg=#64dae5
highlight Directory     guifg=#649ae5
highlight VertSplit     guifg=#494c53 guibg=#2b2c2e
highlight WinSeparator  guifg=#494c53 guibg=#2b2c2e
highlight EndOfBuffer   guifg=#7c8391

" ─────────────────────────────────────────────────────────────
" Popup / Float
" ─────────────────────────────────────────────────────────────
highlight NormalFloat   guifg=#e5e5e5        guibg=#2b2c2e
highlight FloatBorder   guifg=#494c53 guibg=#2b2c2e
highlight FloatTitle    guifg=#64dae5      guibg=#2b2c2e

highlight Pmenu         guifg=#e5e5e5        guibg=#2b2c2e
highlight PmenuSel      guifg=#e5e5e5        guibg=#494c53
highlight PmenuSbar     guifg=#2b2c2e        guibg=#494c53
highlight PmenuThumb    guifg=#2b2c2e        guibg=#494c53
highlight PmenuMatch    guifg=#64dae5      guibg=#494c53
highlight PmenuMatchSel guifg=#64dae5      guibg=#494c53

" ─────────────────────────────────────────────────────────────
" Diff
" ─────────────────────────────────────────────────────────────
highlight DiffAdd       guifg=#64e570     guibg=#494c53
highlight DiffChange    guifg=#649ae5      guibg=#494c53
highlight DiffDelete    guifg=#e57164       guibg=#494c53
highlight DiffText      guifg=#e5b064    guibg=#494c53

highlight Added         guifg=#64e570
highlight Removed       guifg=#e57164

" ─────────────────────────────────────────────────────────────
" Diagnostics / LSP
" ─────────────────────────────────────────────────────────────
highlight DiagnosticError           guifg=#e57164
highlight DiagnosticWarn            guifg=#dae564
highlight DiagnosticInfo            guifg=#649ae5
highlight DiagnosticHint            guifg=#64dae5
highlight DiagnosticUnnecessary     guifg=#7c8391

highlight DiagnosticVirtualTextError guifg=#e57164
highlight DiagnosticVirtualTextWarn  guifg=#dae564
highlight DiagnosticVirtualTextInfo  guifg=#649ae5
highlight DiagnosticVirtualTextHint  guifg=#64dae5

highlight DiagnosticUnderlineError   gui=undercurl guisp=#e57164
highlight DiagnosticUnderlineWarn    gui=undercurl guisp=#dae564
highlight DiagnosticUnderlineInfo    gui=undercurl guisp=#649ae5
highlight DiagnosticUnderlineHint    gui=undercurl guisp=#64dae5

highlight LspReferenceText          guibg=#494c53
highlight LspReferenceRead          guibg=#494c53
highlight LspReferenceWrite         guibg=#494c53
highlight LspSignatureActiveParameter guifg=#e5b064
highlight LspCodeLens               guifg=#7c8391
highlight LspInlayHint              guifg=#7c8391

" ─────────────────────────────────────────────────────────────
" Syntax
" ─────────────────────────────────────────────────────────────
highlight Comment       guifg=#7c8391      gui=italic
highlight Constant      guifg=#e56499
highlight String        guifg=#64e570
highlight Character     guifg=#64e570
highlight Boolean       guifg=#64dae5
highlight Number        guifg=#e5b064

highlight Identifier    guifg=#e5e5e5
highlight Function      guifg=#649ae5

highlight Statement     guifg=#e564da
highlight Operator      guifg=#b064e5
highlight Keyword       guifg=#e5b064
highlight PreProc       guifg=#64dae5
highlight Label         guifg=#e5b064

highlight Type          guifg=#b064e5
highlight Special       guifg=#e56499
highlight Delimiter     guifg=#e5e5e5

highlight Debug         guifg=#e5b064

highlight Error         guifg=#e57164
highlight Todo          guifg=#b064e5 gui=bold

" ─────────────────────────────────────────────────────────────
" Markdown
" ─────────────────────────────────────────────────────────────
highlight markdownHeadingDelimiter guifg=#7c8391
highlight markdownCode             guifg=#64dae5
highlight markdownCodeBlock        guifg=#64dae5
highlight markdownH1               guifg=#e5b064 gui=bold
highlight markdownH2               guifg=#64dae5   gui=bold
highlight markdownH3               guifg=#649ae5   gui=bold
highlight markdownH4               guifg=#b064e5 gui=bold
highlight markdownH5               guifg=#e564da gui=bold
highlight markdownH6               guifg=#64e570  gui=bold
highlight markdownLinkText         guifg=#649ae5   gui=underline

" ─────────────────────────────────────────────────────────────
" UI Bars
" ─────────────────────────────────────────────────────────────
highlight StatusLine     guifg=#e5e5e5   guibg=#2b2c2e
highlight StatusLineNC   guifg=#7c8391 guibg=#2b2c2e
highlight TabLine        guifg=#7c8391 guibg=#2b2c2e
highlight TabLineFill    guifg=#7c8391 guibg=#2b2c2e
highlight TabLineSel     guifg=#e5e5e5   guibg=#494c53
highlight WinBar         guifg=#e5e5e5   guibg=#2b2c2e
highlight WinBarNC       guifg=#7c8391 guibg=#2b2c2e

" ─────────────────────────────────────────────────────────────
" Misc
" ─────────────────────────────────────────────────────────────
highlight SpecialKey     guifg=#7c8391
highlight Whitespace     guifg=#494c53
highlight Question       guifg=#dae564
highlight MoreMsg        guifg=#649ae5
highlight WarningMsg     guifg=#e5b064
highlight ErrorMsg       guifg=#e57164
highlight QuickFixLine   guibg=#494c53
highlight qfLineNr       guifg=#7c8391
highlight qfFileName     guifg=#649ae5

