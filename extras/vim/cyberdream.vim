" cyberdream.vim - Cyberdream theme for VIM.
" Maintainer: 0l3d
" Description: Cyberdream theme for VIM.

highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cyberdream"
set termguicolors

highlight Normal guibg=#16181a guifg=#ffffff
highlight CursorLine guibg=#1e2124
highlight Visual guibg=#3c4048

highlight Comment guifg=#7b8496 gui=italic
highlight Identifier guifg=#5ea1ff
highlight String guifg=#5eff6c
highlight Constant guifg=#5ef1ff
highlight Error guifg=#ff6e5e gui=bold
highlight Todo guifg=#f1ff5e gui=bold
highlight Statement guifg=#ff5ef1
highlight Type guifg=#ff5ea0
highlight Number guifg=#ffbd5e
highlight Function guifg=#bd5eff
