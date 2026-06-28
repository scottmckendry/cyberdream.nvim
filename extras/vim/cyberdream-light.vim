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
highlight Normal        guifg=#16181a        guibg=#ffffff
highlight NormalNC      guifg=#16181a        guibg=#ffffff
highlight Cursor        guifg=#ffffff        guibg=#16181a
highlight CursorLine    guibg=#acacac
highlight CursorColumn  guibg=#acacac
highlight CursorLineNr  guifg=#7b8496
highlight LineNr        guifg=#7b8496
highlight ColorColumn   guibg=#acacac
highlight Visual        guibg=#acacac
highlight VisualNOS     guibg=#acacac
highlight MatchParen    guifg=#f40064      guibg=#acacac
highlight Search        guifg=#eaeaea    guibg=#16181a
highlight IncSearch     guifg=#eaeaea    guibg=#008c99
highlight CurSearch     guifg=#eaeaea    guibg=#008c99
highlight Directory     guifg=#0057d1
highlight VertSplit     guifg=#acacac guibg=#ffffff
highlight WinSeparator  guifg=#acacac guibg=#ffffff
highlight EndOfBuffer   guifg=#7b8496

" ─────────────────────────────────────────────────────────────
" Popup / Float
" ─────────────────────────────────────────────────────────────
highlight NormalFloat   guifg=#16181a        guibg=#ffffff
highlight FloatBorder   guifg=#acacac guibg=#ffffff
highlight FloatTitle    guifg=#008c99      guibg=#ffffff

highlight Pmenu         guifg=#16181a        guibg=#ffffff
highlight PmenuSel      guifg=#16181a        guibg=#acacac
highlight PmenuSbar     guifg=#ffffff        guibg=#acacac
highlight PmenuThumb    guifg=#ffffff        guibg=#acacac
highlight PmenuMatch    guifg=#008c99      guibg=#acacac
highlight PmenuMatchSel guifg=#008c99      guibg=#acacac

" ─────────────────────────────────────────────────────────────
" Diff
" ─────────────────────────────────────────────────────────────
highlight DiffAdd       guifg=#008b0c     guibg=#acacac
highlight DiffChange    guifg=#0057d1      guibg=#acacac
highlight DiffDelete    guifg=#d11500       guibg=#acacac
highlight DiffText      guifg=#d17c00    guibg=#acacac

highlight Added         guifg=#008b0c
highlight Removed       guifg=#d11500

" ─────────────────────────────────────────────────────────────
" Diagnostics / LSP
" ─────────────────────────────────────────────────────────────
highlight DiagnosticError           guifg=#d11500
highlight DiagnosticWarn            guifg=#997b00
highlight DiagnosticInfo            guifg=#0057d1
highlight DiagnosticHint            guifg=#008c99
highlight DiagnosticUnnecessary     guifg=#7b8496

highlight DiagnosticVirtualTextError guifg=#d11500
highlight DiagnosticVirtualTextWarn  guifg=#997b00
highlight DiagnosticVirtualTextInfo  guifg=#0057d1
highlight DiagnosticVirtualTextHint  guifg=#008c99

highlight DiagnosticUnderlineError   gui=undercurl guisp=#d11500
highlight DiagnosticUnderlineWarn    gui=undercurl guisp=#997b00
highlight DiagnosticUnderlineInfo    gui=undercurl guisp=#0057d1
highlight DiagnosticUnderlineHint    gui=undercurl guisp=#008c99

highlight LspReferenceText          guibg=#acacac
highlight LspReferenceRead          guibg=#acacac
highlight LspReferenceWrite         guibg=#acacac
highlight LspSignatureActiveParameter guifg=#d17c00
highlight LspCodeLens               guifg=#7b8496
highlight LspInlayHint              guifg=#7b8496

" ─────────────────────────────────────────────────────────────
" Syntax
" ─────────────────────────────────────────────────────────────
highlight Comment       guifg=#7b8496      gui=italic
highlight Constant      guifg=#f40064
highlight String        guifg=#008b0c
highlight Character     guifg=#008b0c
highlight Boolean       guifg=#008c99
highlight Number        guifg=#d17c00

highlight Identifier    guifg=#16181a
highlight Function      guifg=#0057d1

highlight Statement     guifg=#d100bf
highlight Operator      guifg=#a018ff
highlight Keyword       guifg=#d17c00
highlight PreProc       guifg=#008c99
highlight Label         guifg=#d17c00

highlight Type          guifg=#a018ff
highlight Special       guifg=#f40064
highlight Delimiter     guifg=#16181a

highlight Debug         guifg=#d17c00

highlight Error         guifg=#d11500
highlight Todo          guifg=#a018ff gui=bold

" ─────────────────────────────────────────────────────────────
" Markdown
" ─────────────────────────────────────────────────────────────
highlight markdownHeadingDelimiter guifg=#7b8496
highlight markdownCode             guifg=#008c99
highlight markdownCodeBlock        guifg=#008c99
highlight markdownH1               guifg=#d17c00 gui=bold
highlight markdownH2               guifg=#008c99   gui=bold
highlight markdownH3               guifg=#0057d1   gui=bold
highlight markdownH4               guifg=#a018ff gui=bold
highlight markdownH5               guifg=#d100bf gui=bold
highlight markdownH6               guifg=#008b0c  gui=bold
highlight markdownLinkText         guifg=#0057d1   gui=underline

" ─────────────────────────────────────────────────────────────
" UI Bars
" ─────────────────────────────────────────────────────────────
highlight StatusLine     guifg=#16181a   guibg=#ffffff
highlight StatusLineNC   guifg=#7b8496 guibg=#ffffff
highlight TabLine        guifg=#7b8496 guibg=#ffffff
highlight TabLineFill    guifg=#7b8496 guibg=#ffffff
highlight TabLineSel     guifg=#16181a   guibg=#acacac
highlight WinBar         guifg=#16181a   guibg=#ffffff
highlight WinBarNC       guifg=#7b8496 guibg=#ffffff

" ─────────────────────────────────────────────────────────────
" Misc
" ─────────────────────────────────────────────────────────────
highlight SpecialKey     guifg=#7b8496
highlight Whitespace     guifg=#acacac
highlight Question       guifg=#997b00
highlight MoreMsg        guifg=#0057d1
highlight WarningMsg     guifg=#d17c00
highlight ErrorMsg       guifg=#d11500
highlight QuickFixLine   guibg=#acacac
highlight qfLineNr       guifg=#7b8496
highlight qfFileName     guifg=#0057d1

