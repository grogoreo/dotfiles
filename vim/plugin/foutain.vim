set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
set showbreak=

setlocal makeprg=fountainpreview\ -i\ %

"fun! TOC()
"    call setloclist(0, [])
"    let save_cursor = getpos(".")
"    call cursor(1, 1)
"    while search("^#", 'W') > 0
"       let msg = printf('%s:%d:%s', expand('%'), line('.'), substitute(getline('.'), '#', '»', 'g'))
"       laddexpr msg
"    endwhile
"    call setpos('.', save_cursor)
"endfun
"
"com! -bar TOC call TOC()

command Pages ! ~/bin/fountainpreview\ -p\ -i\ %
