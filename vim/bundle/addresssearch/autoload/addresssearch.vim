" Address search for mutt and Abook
" From: http://www.vim.org/scripts/script.php?script_id=3128
" Edited for Abook

if exists("g:loaded_addresssearch") || &cp || v:version < 700
    finish
endif
let g:loaded_addresssearch = 1

fun! CompleteEmails(findstart, base)
    if a:findstart
        let line = getline('.')
        "locate the start of the word
        let start = col('.') - 1
        while start > 0 && line[start - 1] =~ '[^: ,]'
            let start -= 1
        endwhile
        return start
    else
        " find the addresses using the external tool
        " the tools must give properly formated email addresses
        let res = []
        for m in split(system('~/bin/abook-vim ' . shellescape(a:base)), '\n')
                call add(res, m)
        endfor
	let g:greg = res
        return res
    endif
endfun

fun! UserComplete(findstart, base)
    " Fetch current line
    let line = getline(line('.'))
    " Is it a special line?
    if line =~ '^\(To\|Cc\|Bcc\|From\|Reply-To\):'
        return CompleteEmails(a:findstart, a:base)
    endif
endfun

function! addresssearch#run()
    set completefunc=UserComplete
endfunction
