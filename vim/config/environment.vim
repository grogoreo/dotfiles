""" Environment

let dir = expand("$XDG_CACHE_HOME/vim")
if !isdirectory(dir)
    call mkdir(dir)
endif

set directory=$XDG_CACHE_HOME/vim,.,/var/tmp,/tmp
set backupdir=$XDG_CACHE_HOME/vim,.,~/
if has('persistent_undo')                                                   
    set undodir=$XDG_CACHE_HOME/vim,.,~/
    set undofile
endif
set viminfo+=n$XDG_CACHE_HOME/vim/viminfo
