" cyberdream-light.vim - Cyberdream theme for VIM.
" Maintainer: 0l3d
" Description: Cyberdream theme for VIM.

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cyberdream-light"
set termguicolors

highlight Normal guibg=#ffffff guifg=#16181a
highlight CursorLine guibg=#eaeaea
highlight Visual guibg=#acacac

highlight Comment guifg=#7b8496
highlight Identifier guifg=#0057d1
highlight String guifg=#008b0c
highlight Constant guifg=#008c99
highlight Error guifg=#d11500
highlight Todo guifg=#997b00
highlight Statement guifg=#d100bf
highlight Type guifg=#f40064
highlight Number guifg=#d17c00
highlight Function guifg=#a018ff

