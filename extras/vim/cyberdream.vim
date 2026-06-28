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
highlight MatchParen    guifg=#ff5ea0      guibg=#3c4048
highlight Search        guifg=#1e2124    guibg=#ffffff
highlight IncSearch     guifg=#1e2124    guibg=#5ef1ff
highlight CurSearch     guifg=#1e2124    guibg=#5ef1ff
highlight Directory     guifg=#5ea1ff
highlight VertSplit     guifg=#3c4048 guibg=#16181a
highlight WinSeparator  guifg=#3c4048 guibg=#16181a
highlight EndOfBuffer   guifg=#7b8496

" ─────────────────────────────────────────────────────────────
" Popup / Float
" ─────────────────────────────────────────────────────────────
highlight NormalFloat   guifg=#ffffff        guibg=#16181a
highlight FloatBorder   guifg=#3c4048 guibg=#16181a
highlight FloatTitle    guifg=#5ef1ff      guibg=#16181a

highlight Pmenu         guifg=#ffffff        guibg=#16181a
highlight PmenuSel      guifg=#ffffff        guibg=#3c4048
highlight PmenuSbar     guifg=#16181a        guibg=#3c4048
highlight PmenuThumb    guifg=#16181a        guibg=#3c4048
highlight PmenuMatch    guifg=#5ef1ff      guibg=#3c4048
highlight PmenuMatchSel guifg=#5ef1ff      guibg=#3c4048

" ─────────────────────────────────────────────────────────────
" Diff
" ─────────────────────────────────────────────────────────────
highlight DiffAdd       guifg=#5eff6c     guibg=#3c4048
highlight DiffChange    guifg=#5ea1ff      guibg=#3c4048
highlight DiffDelete    guifg=#ff6e5e       guibg=#3c4048
highlight DiffText      guifg=#ffbd5e    guibg=#3c4048

highlight Added         guifg=#5eff6c
highlight Removed       guifg=#ff6e5e

" ─────────────────────────────────────────────────────────────
" Diagnostics / LSP
" ─────────────────────────────────────────────────────────────
highlight DiagnosticError           guifg=#ff6e5e
highlight DiagnosticWarn            guifg=#f1ff5e
highlight DiagnosticInfo            guifg=#5ea1ff
highlight DiagnosticHint            guifg=#5ef1ff
highlight DiagnosticUnnecessary     guifg=#7b8496

highlight DiagnosticVirtualTextError guifg=#ff6e5e
highlight DiagnosticVirtualTextWarn  guifg=#f1ff5e
highlight DiagnosticVirtualTextInfo  guifg=#5ea1ff
highlight DiagnosticVirtualTextHint  guifg=#5ef1ff

highlight DiagnosticUnderlineError   gui=undercurl guisp=#ff6e5e
highlight DiagnosticUnderlineWarn    gui=undercurl guisp=#f1ff5e
highlight DiagnosticUnderlineInfo    gui=undercurl guisp=#5ea1ff
highlight DiagnosticUnderlineHint    gui=undercurl guisp=#5ef1ff

highlight LspReferenceText          guibg=#3c4048
highlight LspReferenceRead          guibg=#3c4048
highlight LspReferenceWrite         guibg=#3c4048
highlight LspSignatureActiveParameter guifg=#ffbd5e
highlight LspCodeLens               guifg=#7b8496
highlight LspInlayHint              guifg=#7b8496

" ─────────────────────────────────────────────────────────────
" Syntax
" ─────────────────────────────────────────────────────────────
highlight Comment       guifg=#7b8496      gui=italic
highlight Constant      guifg=#ff5ea0
highlight String        guifg=#5eff6c
highlight Character     guifg=#5eff6c
highlight Boolean       guifg=#5ef1ff
highlight Number        guifg=#ffbd5e

highlight Identifier    guifg=#ffffff
highlight Function      guifg=#5ea1ff

highlight Statement     guifg=#ff5ef1
highlight Operator      guifg=#bd5eff
highlight Keyword       guifg=#ffbd5e
highlight PreProc       guifg=#5ef1ff
highlight Label         guifg=#ffbd5e

highlight Type          guifg=#bd5eff
highlight Special       guifg=#ff5ea0
highlight Delimiter     guifg=#ffffff

highlight Debug         guifg=#ffbd5e

highlight Error         guifg=#ff6e5e
highlight Todo          guifg=#bd5eff gui=bold

" ─────────────────────────────────────────────────────────────
" Markdown
" ─────────────────────────────────────────────────────────────
highlight markdownHeadingDelimiter guifg=#7b8496
highlight markdownCode             guifg=#5ef1ff
highlight markdownCodeBlock        guifg=#5ef1ff
highlight markdownH1               guifg=#ffbd5e gui=bold
highlight markdownH2               guifg=#5ef1ff   gui=bold
highlight markdownH3               guifg=#5ea1ff   gui=bold
highlight markdownH4               guifg=#bd5eff gui=bold
highlight markdownH5               guifg=#ff5ef1 gui=bold
highlight markdownH6               guifg=#5eff6c  gui=bold
highlight markdownLinkText         guifg=#5ea1ff   gui=underline

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
highlight Question       guifg=#f1ff5e
highlight MoreMsg        guifg=#5ea1ff
highlight WarningMsg     guifg=#ffbd5e
highlight ErrorMsg       guifg=#ff6e5e
highlight QuickFixLine   guibg=#3c4048
highlight qfLineNr       guifg=#7b8496
highlight qfFileName     guifg=#5ea1ff

