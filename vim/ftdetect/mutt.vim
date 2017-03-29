autocmd BufRead,BufNewFile *mutt-* set filetype=mail
autocmd BufRead,BufNewFile *mutt-* setlocal spell
autocmd BufRead,BufNewFile *mutt-* setlocal formatoptions+=aw

" For per account config files
autocmd BufRead,BufNewFile */mutt/accounts/* set filetype=muttrc
autocmd BufRead,BufNewFile */mutt/conf/* set filetype=muttrc
