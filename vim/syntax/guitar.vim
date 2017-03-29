" Language:     Guitar Lead Sheets and Tabs
" Author:       Chris Marshall <chris@chrismar035.com>
" Maintainer:   Roman Cheplyaka <roma@ro-che.info>
" URL:          http://github.com/chrismar035/guitar-vim
" Version:      0.1.0
" Last Change:  2012-03-06 Tue 10:31 PM


let    s:tab_regexp = "^.*\\|.*$"

" Chords
syntax match Chords "\<[A-G][b#]\?\(maj\|sus\|m\|dim\|aug\)\?\(5\|7\|9\|11\)\?\>"
syntax match BentNote "b\d\+"hs=s+1 contained
syntax match ReturnNote "r\d\+"hs=s+1 contained
syntax match PullOffNote "p\d\+"hs=s+1 contained
syntax match HammerNote "h\d\+"hs=s+1 contained
syntax match SlideNote "s\d\+"hs=s+1 contained
syntax match TabNote "\d\+" contained
syntax region Tab start="^[eBGDAE]|-" end="-|$" contains=CONTAINED oneline

hi link Chords      Type
hi link BentNote    Todo
hi link ReturnNote  String
hi link PullOffNote Type
hi link HammerNote  Statement
hi link SlideNote   Constant
hi link TabNote     Number
hi link Tab         Comment

" Tabs
"execute "syntax match tab_line /\\v". s:tab_regexp ."/ contains=tab"
"syntax match tab /\v\|.*\|/ contained contains=tab_elem,tab_delim
"syntax match tab_elem /[^-|]/ contained
"syntax match tab_delim /|/ contained

"highlight link tab_line comment
"highlight link tab comment
"highlight link tab_elem string
"highlight link tab_delim special
