"----------------------------------------------------------------
" General settings                                              |
"----------------------------------------------------------------

"----------------------------------------------------------------
" Syntax group   | Foreground    | Background    | Style        |
"----------------------------------------------------------------

" --------------------------------
" Editor settings
" --------------------------------
hi Normal          ctermfg=247    ctermbg=235    cterm=none    guifg=#9e9e9e   guibg=#262626
hi Cursor          ctermfg=none    ctermbg=none    cterm=none
hi CursorLine      ctermfg=none    ctermbg=234    cterm=none   guibg=#1c1c1c
hi LineNr          ctermfg=238    ctermbg=234    cterm=none    guifg=#444444   guibg=#1c1c1c
hi CursorLineNR    ctermfg=238    ctermbg=234    cterm=none    guifg=#444444   guibg=#1c1c1c

" -----------------
" - Number column -
" -----------------
hi CursorColumn    ctermfg=241    ctermbg=234    cterm=none    guifg=#626262   guibg=#1c1c1c
hi FoldColumn      ctermfg=none    ctermbg=none    cterm=none
hi SignColumn      ctermfg=none    ctermbg=none    cterm=none
hi Folded          ctermfg=238    ctermbg=234    cterm=none    guifg=#444444   guibg=#1c1c1c

" -------------------------
" - Window/Tab delimiters - 
" -------------------------
hi VertSplit       ctermfg=234    ctermbg=234    cterm=none    guifg=#1c1c1c   guibg=#1c1c1c
hi ColorColumn     ctermfg=none    ctermbg=none    cterm=none
hi TabLine         ctermfg=none    ctermbg=none    cterm=none
hi TabLineFill     ctermfg=none    ctermbg=none    cterm=none
hi TabLineSel      ctermfg=none    ctermbg=none    cterm=none

" -------------------------------
" - File Navigation / Searching -
" -------------------------------
hi Directory       ctermfg=none    ctermbg=none    cterm=none
hi Search          ctermfg=none    ctermbg=none    cterm=reverse
hi IncSearch       ctermfg=none    ctermbg=none    cterm=reverse

" -----------------
" - Prompt/Status -
" -----------------
hi StatusLine      ctermfg=none    ctermbg=none    cterm=none
hi StatusLineNC    ctermfg=none    ctermbg=none    cterm=none
hi WildMenu        ctermfg=none    ctermbg=none    cterm=none
hi Question        ctermfg=none    ctermbg=none    cterm=none
hi Title           ctermfg=none    ctermbg=none    cterm=none
hi ModeMsg         ctermfg=none    ctermbg=none    cterm=none
hi MoreMsg         ctermfg=none    ctermbg=none    cterm=none

" --------------
" - Visual aid -
" --------------
hi MatchParen      ctermfg=250    ctermbg=232    cterm=bold    guifg=#bcbcbc   guibg=#080808
hi Visual          ctermfg=none    ctermbg=none    cterm=bold,reverse
hi VisualNOS       ctermfg=none    ctermbg=none    cterm=none
hi NonText         ctermbg=234    cterm=none    guibg=#1c1c1c    guifg=#a8a8a8

hi Todo            ctermfg=none    ctermbg=none    cterm=none
hi Underlined      ctermfg=none    ctermbg=none    cterm=none
hi Error           ctermfg=none    ctermbg=none    cterm=none
hi ErrorMsg        ctermfg=none    ctermbg=none    cterm=none
hi cErrInBracket   ctermfg=none    ctermbg=none    cterm=none
hi cBracket        ctermfg=none    ctermbg=none    cterm=none
hi WarningMsg      ctermfg=none    ctermbg=none    cterm=none
hi Ignore          ctermfg=none    ctermbg=none    cterm=none
hi SpecialKey      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Variable types
" --------------------------------
hi Constant        ctermfg=none    ctermbg=none    cterm=none
hi String          ctermfg=none    ctermbg=none    cterm=none
hi StringDelimiter ctermfg=none    ctermbg=none    cterm=none
hi Character       ctermfg=none    ctermbg=none    cterm=none
hi Number          ctermfg=none    ctermbg=none    cterm=none
hi Boolean         ctermfg=none    ctermbg=none    cterm=none
hi Float           ctermfg=none    ctermbg=none    cterm=none

hi Identifier      ctermfg=074    ctermbg=none    cterm=none    guifg=5fafd7
hi Function        ctermbg=none    cterm=bold    guifg=#a8a8a8

" --------------------------------
" Language constructs
" --------------------------------
hi Statement       ctermfg=none    ctermbg=none    cterm=none
hi Conditional     ctermfg=none    ctermbg=none    cterm=none
hi Repeat          ctermfg=none    ctermbg=none    cterm=none
hi Label           ctermfg=none    ctermbg=none    cterm=none
hi Operator        ctermfg=none    ctermbg=none    cterm=none
hi Keyword         ctermfg=none    ctermbg=none    cterm=none
hi Exception       ctermfg=none    ctermbg=none    cterm=none
hi Comment         ctermfg=240    ctermbg=none    cterm=none

hi Special         ctermfg=none    ctermbg=none    cterm=none
hi SpecialChar     ctermfg=none    ctermbg=none    cterm=none
hi Tag             ctermfg=none    ctermbg=none    cterm=none
hi Delimiter       ctermfg=none    ctermbg=none    cterm=none
hi SpecialComment  ctermfg=none    ctermbg=none    cterm=none
hi Debug           ctermfg=none    ctermbg=none    cterm=none

" ----------
" - C like -
" ----------
hi PreProc         ctermfg=none    ctermbg=none    cterm=none
hi Include         ctermfg=none    ctermbg=none    cterm=none
hi Define          ctermfg=none    ctermbg=none    cterm=none
hi Macro           ctermfg=none    ctermbg=none    cterm=none
hi PreCondit       ctermfg=none    ctermbg=none    cterm=none

hi Type            ctermfg=241    ctermbg=none    cterm=italic    guifg=#626262
hi StorageClass    ctermfg=241    ctermbg=none    cterm=italic    guifg=#626262
hi Structure       ctermfg=241    ctermbg=none    cterm=italic    guifg=#626262
hi Typedef         ctermfg=241    ctermbg=none    cterm=none    guifg=#626262

" --------------------------------
" Diff
" --------------------------------
hi DiffAdd         ctermfg=none    ctermbg=none    cterm=none
hi DiffChange      ctermfg=none    ctermbg=none    cterm=none
hi DiffDelete      ctermfg=none    ctermbg=none    cterm=none
hi DiffText        ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Completion menu
" --------------------------------
hi Pmenu           ctermfg=none    ctermbg=none    cterm=none
hi PmenuSel        ctermfg=none    ctermbg=none    cterm=none
hi PmenuSbar       ctermfg=none    ctermbg=none    cterm=none
hi PmenuThumb      ctermfg=none    ctermbg=none    cterm=none

" --------------------------------
" Spelling
" --------------------------------
hi SpellBad        ctermfg=none    ctermbg=none    cterm=none
hi SpellCap        ctermfg=none    ctermbg=none    cterm=none
hi SpellLocal      ctermfg=none    ctermbg=none    cterm=none
hi SpellRare       ctermfg=none    ctermbg=none    cterm=none
