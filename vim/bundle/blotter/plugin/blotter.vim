if exists("g:loaded_blotter") || &cp || v:version < 700
    finish
endif
let g:loaded_blotter = 1

function! NewBlotter()
    let filename=substitute(expand('%:r'), "_", " ", "")
    let title = filename
    let date=strftime('%A %d %B %Y', localtime())
    exec "normal! ggi# ".title."\<CR>*".date."*\<CR>\<CR>" 
endfunction

command! NewBlotter call NewBlotter()
