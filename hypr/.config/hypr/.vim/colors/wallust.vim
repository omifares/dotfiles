" Vim color file
"
" Name: wallust.vim
" Author: Adapted by Mifares
" Based on: molokai by Tomas Restrepo
"
" Dynamic template for Wallust / Pywal
"

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name = "wallust"

" ======================
" =  Base highlights   =
" ======================
hi Boolean         guifg=#8F8873
hi Character       guifg=#A79F85
hi Number          guifg=#8F8873
hi String          guifg=#A79F85
hi Conditional     guifg=#A29A7F gui=bold
hi Constant        guifg=#8F8873 gui=bold
hi Cursor          guifg=#010000 guibg=#C5BFAD
hi iCursor         guifg=#010000 guibg=#C5BFAD
hi Debug           guifg=#D8CDA9 gui=bold
hi Define          guifg=#767161
hi Delimiter       guifg=#A8A395
hi DiffAdd                       guibg=#6B6656
hi DiffChange      guifg=#767161 guibg=#7E7764
hi DiffDelete      guifg=#595549 guibg=#191816
hi DiffText                      guibg=#7E7764 gui=italic,bold

hi Directory       guifg=#6B6656 gui=bold
hi Error           guifg=#FAF6E7 guibg=#595549
hi ErrorMsg        guifg=#595549 guibg=#010000 gui=bold
hi Exception       guifg=#6B6656 gui=bold
hi Float           guifg=#8F8873
hi FoldColumn      guifg=#A8A395 guibg=#010000
hi Folded          guifg=#A8A395 guibg=#010000
hi Function        guifg=#C0B697
hi Identifier      guifg=#767161
hi Ignore          guifg=#A8A395 guibg=#010000
hi IncSearch       guifg=#010000 guibg=#B5AB8C
hi Keyword         guifg=#A29A7F gui=bold
hi Label           guifg=#A79F85 gui=none
hi Macro           guifg=#767161 gui=italic
hi SpecialKey      guifg=#B5AB8C gui=italic
hi MatchParen      guifg=#010000 guibg=#767161 gui=bold
hi ModeMsg         guifg=#FAF6E7
hi MoreMsg         guifg=#FAF6E7
hi Operator        guifg=#A29A7F

" ======================
" =  Menu e UI         =
" ======================
hi Pmenu           guifg=#FAF6E7 guibg=#191816
hi PmenuSel        guifg=#010000 guibg=#767161 gui=bold
hi PmenuSbar                      guibg=#A8A395
hi PmenuThumb      guibg=#767161

hi PreCondit       guifg=#908871 gui=bold
hi PreProc         guifg=#908871
hi Question        guifg=#B5AB8C
hi Repeat          guifg=#A29A7F gui=bold
hi Search          guifg=#010000 guibg=#A79F85
hi SignColumn      guifg=#6B6656 guibg=#010000
hi SpecialChar     guifg=#A29A7F gui=bold
hi SpecialComment  guifg=#A8A395 gui=bold
hi Special         guifg=#B5AB8C gui=italic
if has("spell")
    hi SpellBad    guisp=#595549 gui=undercurl
    hi SpellCap    guisp=#767161 gui=undercurl
    hi SpellLocal  guisp=#8F8873 gui=undercurl
    hi SpellRare   guisp=#FAF6E7 gui=undercurl
endif

hi Statement       guifg=#A29A7F gui=bold
hi StatusLine      guifg=#010000 guibg=#FAF6E7 gui=bold
hi StatusLineNC    guifg=#FAF6E7 guibg=#010000
hi StorageClass    guifg=#767161 gui=italic
hi Structure       guifg=#B5AB8C
hi Tag             guifg=#A29A7F gui=italic
hi Title           guifg=#767161
hi Todo            guifg=#010000 guibg=#A79F85 gui=bold

hi Typedef         guifg=#B5AB8C
hi Type            guifg=#B5AB8C gui=none
hi Underlined      guifg=#A8A395 gui=underline
hi VertSplit       guifg=#FAF6E7 guibg=#010000 gui=bold
hi VisualNOS                      guibg=#7E7764
hi Visual                         guibg=#7E7764
hi WarningMsg      guifg=#FAF6E7 guibg=#6B6656 gui=bold
hi WildMenu        guifg=#FAF6E7 guibg=#010000

hi TabLineFill     guifg=#010000 guibg=#010000
hi TabLine         guibg=#010000 guifg=#FAF6E7 gui=none

" ======================
" =  Normal / Cursor   =
" ======================
hi Normal          guifg=#FAF6E7 guibg=#010000
hi Comment         guifg=#A8A395 gui=italic
hi CursorLine                    guibg=#191816
hi CursorLineNr    guifg=#767161 gui=bold
hi CursorColumn                  guibg=#191816
hi ColorColumn                   guibg=#191816
hi LineNr          guifg=#A8A395 guibg=#010000
hi NonText         guifg=#A8A395
hi SpecialKey      guifg=#A8A395

set background=dark

" ======================
" =  Terminal Support  =
" ======================
if has("nvim") || has("termguicolors")
  let g:terminal_ansi_colors = [
        \ "#191816",  "#595549",  "#6B6656",  "#7E7764",
        \ "#908871",  "#A29A7F",  "#B5AB8C",  "#F0E9D4",
        \ "#A8A395",  "#767161",  "#8F8873", "#A79F85",
        \ "#C0B697", "#D8CDA9", "#F1E4BB", "#F0E9D4" ]
endif

