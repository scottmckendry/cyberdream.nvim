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
highlight Normal        guifg=#ffffff        guibg=#16181a
highlight NormalNC      guifg=#ffffff        guibg=#16181a
highlight Cursor        guifg=#16181a        guibg=#ffffff
highlight CursorLine    guibg=#3c4048
highlight CursorColumn  guibg=#3c4048
highlight CursorLineNr  guifg=#7b8496
highlight LineNr        guifg=#7b8496
highlight ColorColumn   guibg=#3c4048
highlight Visual        guibg=#3c4048
highlight VisualNOS     guibg=#3c4048
highlight MatchParen    guifg=#e878a8      guibg=#3c4048
highlight Search        guifg=#1e2124    guibg=#ffffff
highlight IncSearch     guifg=#1e2124    guibg=#7ed8e8
highlight CurSearch     guifg=#1e2124    guibg=#7ed8e8
highlight Directory     guifg=#78a8e8
highlight VertSplit     guifg=#3c4048 guibg=#16181a
highlight WinSeparator  guifg=#3c4048 guibg=#16181a
highlight EndOfBuffer   guifg=#7b8496

" ─────────────────────────────────────────────────────────────
" Popup / Float
" ─────────────────────────────────────────────────────────────
highlight NormalFloat   guifg=#ffffff        guibg=#16181a
highlight FloatBorder   guifg=#3c4048 guibg=#16181a
highlight FloatTitle    guifg=#7ed8e8      guibg=#16181a

highlight Pmenu         guifg=#ffffff        guibg=#16181a
highlight PmenuSel      guifg=#ffffff        guibg=#3c4048
highlight PmenuSbar     guifg=#16181a        guibg=#3c4048
highlight PmenuThumb    guifg=#16181a        guibg=#3c4048
highlight PmenuMatch    guifg=#7ed8e8      guibg=#3c4048
highlight PmenuMatchSel guifg=#7ed8e8      guibg=#3c4048

" ─────────────────────────────────────────────────────────────
" Diff
" ─────────────────────────────────────────────────────────────
highlight DiffAdd       guifg=#7ee088     guibg=#3c4048
highlight DiffChange    guifg=#78a8e8      guibg=#3c4048
highlight DiffDelete    guifg=#e8796f       guibg=#3c4048
highlight DiffText      guifg=#e3a875    guibg=#3c4048

highlight Added         guifg=#7ee088
highlight Removed       guifg=#e8796f

" ─────────────────────────────────────────────────────────────
" Diagnostics / LSP
" ─────────────────────────────────────────────────────────────
highlight DiagnosticError           guifg=#e8796f
highlight DiagnosticWarn            guifg=#e3c875
highlight DiagnosticInfo            guifg=#78a8e8
highlight DiagnosticHint            guifg=#7ed8e8
highlight DiagnosticUnnecessary     guifg=#7b8496

highlight DiagnosticVirtualTextError guifg=#e8796f
highlight DiagnosticVirtualTextWarn  guifg=#e3c875
highlight DiagnosticVirtualTextInfo  guifg=#78a8e8
highlight DiagnosticVirtualTextHint  guifg=#7ed8e8

highlight DiagnosticUnderlineError   gui=undercurl guisp=#e8796f
highlight DiagnosticUnderlineWarn    gui=undercurl guisp=#e3c875
highlight DiagnosticUnderlineInfo    gui=undercurl guisp=#78a8e8
highlight DiagnosticUnderlineHint    gui=undercurl guisp=#7ed8e8

highlight LspReferenceText          guibg=#3c4048
highlight LspReferenceRead          guibg=#3c4048
highlight LspReferenceWrite         guibg=#3c4048
highlight LspSignatureActiveParameter guifg=#e3a875
highlight LspCodeLens               guifg=#7b8496
highlight LspInlayHint              guifg=#7b8496

" ─────────────────────────────────────────────────────────────
" Syntax
" ─────────────────────────────────────────────────────────────
highlight Comment       guifg=#7b8496      gui=italic
highlight Constant      guifg=#e878a8
highlight String        guifg=#7ee088
highlight Character     guifg=#7ee088
highlight Boolean       guifg=#7ed8e8
highlight Number        guifg=#e3a875

highlight Identifier    guifg=#ffffff
highlight Function      guifg=#78a8e8

highlight Statement     guifg=#e878d8
highlight Operator      guifg=#b07ee8
highlight Keyword       guifg=#e3a875
highlight PreProc       guifg=#7ed8e8
highlight Label         guifg=#e3a875

highlight Type          guifg=#b07ee8
highlight Special       guifg=#e878a8
highlight Delimiter     guifg=#ffffff

highlight Debug         guifg=#e3a875

highlight Error         guifg=#e8796f
highlight Todo          guifg=#b07ee8 gui=bold

" ─────────────────────────────────────────────────────────────
" Markdown
" ─────────────────────────────────────────────────────────────
highlight markdownHeadingDelimiter guifg=#7b8496
highlight markdownCode             guifg=#7ed8e8
highlight markdownCodeBlock        guifg=#7ed8e8
highlight markdownH1               guifg=#e3a875 gui=bold
highlight markdownH2               guifg=#7ed8e8   gui=bold
highlight markdownH3               guifg=#78a8e8   gui=bold
highlight markdownH4               guifg=#b07ee8 gui=bold
highlight markdownH5               guifg=#e878d8 gui=bold
highlight markdownH6               guifg=#7ee088  gui=bold
highlight markdownLinkText         guifg=#78a8e8   gui=underline

" ─────────────────────────────────────────────────────────────
" UI Bars
" ─────────────────────────────────────────────────────────────
highlight StatusLine     guifg=#ffffff   guibg=#16181a
highlight StatusLineNC   guifg=#7b8496 guibg=#16181a
highlight TabLine        guifg=#7b8496 guibg=#16181a
highlight TabLineFill    guifg=#7b8496 guibg=#16181a
highlight TabLineSel     guifg=#ffffff   guibg=#3c4048
highlight WinBar         guifg=#ffffff   guibg=#16181a
highlight WinBarNC       guifg=#7b8496 guibg=#16181a

" ─────────────────────────────────────────────────────────────
" Misc
" ─────────────────────────────────────────────────────────────
highlight SpecialKey     guifg=#7b8496
highlight Whitespace     guifg=#3c4048
highlight Question       guifg=#e3c875
highlight MoreMsg        guifg=#78a8e8
highlight WarningMsg     guifg=#e3a875
highlight ErrorMsg       guifg=#e8796f
highlight QuickFixLine   guibg=#3c4048
highlight qfLineNr       guifg=#7b8496
highlight qfFileName     guifg=#78a8e8
