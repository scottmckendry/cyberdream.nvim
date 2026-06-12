local colors = require("cyberdream.colors")
local util = require("cyberdream.util")

local M = {}

--- Generate cyberdream theme for vim.
--- @param variant string: Variation of the colorscheme to use.
function M.generate(variant)
    local template = [==[
" cyberdream.vim - Cyberdream theme for VIM.
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "cyberdream"
set termguicolors

highlight Normal guibg=${bg} guifg=${fg}
highlight CursorLine guibg=${bg_alt}
highlight Visual guibg=${bg_highlight}

highlight Comment guifg=${grey} gui=italic
highlight Identifier guifg=${blue}
highlight String guifg=${green}
highlight Constant guifg=${cyan}
highlight Error guifg=${red} gui=bold
highlight Todo guifg=${yellow} gui=bold
highlight Statement guifg=${magenta}
highlight Type guifg=${pink}
highlight Number guifg=${orange}
highlight Function guifg=${purple}
]==]

    return util.parse_extra_template(template, colors[variant])
end

return M

