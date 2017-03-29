augroup i3_ftdetect
    au!
    au BufRead,BufNewFile ~/.config/i3/* set filetype=i3
    au BufRead,BufNewFile ~/.etc/i3/.config/i3/* set filetype=i3
augroup END
