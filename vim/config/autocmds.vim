""" Auto-commands
"augroup vimrc_autocmds
"  autocmd BufEnter * highlight OverLength ctermbg=darkgrey guibg=#592929
"  autocmd BufEnter * match OverLength /\%74v.*/
"augroup END

augroup Templates
    autocmd!
    " add templates in templates/ using filetype as file name
    autocmd BufNewFile * :silent! execute ":0r ".$VIMHOME."templates/".&ft | norm! G$
augroup END

augroup trailingspace
    autocmd!
    autocmd BufWrite *.py :call DeleteTrailingWS()
augroup END

augroup makeprg
    autocmd!
    if executable("shellcheck")
	autocmd FileType sh setlocal makeprg=shellcheck\ -f\ gcc\ %
    endif
augroup END

augroup html
    autocmd!
    let g:user_emmet_install_global = 0
    autocmd FileType html,css EmmetInstall
augroup END

augroup Goyo
    function! s:goyo_enter()
	let b:quitting = 0
	let b:quitting_bang = 0
	autocmd QuitPre <buffer> let b:quitting = 1
	cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!

	if has('gui_running')
	    set fullscreen
	    set linespace=7
	elseif exists('$TMUX')
	    silent !tmux set status off
	endif
	set scrolloff=999
	set linespace=7
    endfunction

    function! s:goyo_leave()
	" Quit Vim if this is the only remaining buffer
	if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
	    if b:quitting_bang
		qa!
	    else
		qa
	    endif
	endif

	if has('gui_running')
	    set nofullscreen
	    set linespace=0
	elseif exists('$TMUX')
	    silent !tmux set status on
	endif

	set scrolloff=5
	set linespace=0
    endfunction

    autocmd User GoyoEnter nested call <SID>goyo_enter()
    autocmd User GoyoLeave nested call <SID>goyo_leave()

augroup END

" Writing Environment
augroup Pencil
    autocmd!
    autocmd FileType markdown,mkd,fountain
		\ call litecorrect#init()
		\ | call textobj#quote#init()
		\ | call textobj#sentence#init()
		\ | Goyo 100
    autocmd FileType markdown,mkd
		\ call pencil#init({'wrap': 'hard', 'autoformat': 1})
		\ | setlocal formatoptions+=w
		\ | setlocal textwidth=90
augroup END
