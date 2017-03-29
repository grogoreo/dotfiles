""" Colours

" Terminal colours
set t_Co=256

" Colourscheme
if v:version > 700
    try
	colorscheme desert256
    catch
	colorscheme slate
    endtry
elseif
    colorscheme slate
endif

highlight LineNr	ctermfg=243 ctermbg=234 guifg=gray53 guibg=gray13
highlight CursorLineNr	ctermbg=237 guibg=grey23 cterm=bold gui=bold
highlight VertSplit	ctermfg=0   ctermbg=137
"highlight Folded ctermfg=black ctermbg=blue
highlight DiffDelete	ctermfg=0   ctermbg=160
highlight StatusLine	ctermfg=233   guifg=#ffffff
highlight StatusLineNC	ctermfg=232 guifg=#b2b2b2

if exists('&cursorline') 
    autocmd InsertEnter * highlight CursorLine guibg=Gray15 ctermbg=235
    autocmd InsertLeave * highlight CursorLine guibg=black ctermbg=black
endif

" Cursor colour
if &term =~ "xterm\\|rxvt"
    " use an orange cursor in insert mode
    let &t_SI = "\<Esc>]12;orange\x7"
    " use a red cursor otherwise
    let &t_EI = "\<Esc>]12;gray\x7"
    silent !echo -ne "\033]12;gray\007"
    " reset cursor when vim exits
    autocmd VimLeave * silent !echo -ne "\033]112\007"
    " use \003]12;gray\007 for gnome-terminal
endif

highlight TabLineFill cterm=none ctermfg=243  ctermbg=234 guifg=#767676 guibg=#1c1c1c
highlight TabLine     cterm=none ctermfg=white ctermbg=234 guifg=#ffffff guibg=#1c1c1c
highlight TabLineSel  cterm=bold ctermfg=white ctermbg=black guifg=#ffffff guibg=#000000
