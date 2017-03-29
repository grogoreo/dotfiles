""" Statusline

if exists("g:loaded_statusline") || &cp || v:version < 700
    finish
endif
let g:loaded_statusline = 1

" Always show the status line
set laststatus=2

" Format the status line
set statusline=			" clear statusline

highlight User1 ctermbg=233 ctermfg=69 guibg=gray3 guifg=cornflowerblue
highlight User2 ctermbg=233 ctermfg=202 guibg=gray3 guifg=OrangeRed
highlight User3 ctermbg=233 ctermfg=28 guibg=gray3 guifg=LawnGreen cterm=bold gui=bold
highlight User4 ctermbg=233 ctermfg=131 guibg=gray3 guifg=tomato
highlight User5 ctermbg=233 ctermfg=149 guibg=gray3 guifg=darkolivegreen2
highlight User6 ctermbg=233 ctermfg=131 guibg=gray3 guifg=maroon
highlight User7 ctermbg=196 guibg=red guifg=white
highlight User8 ctermbg=233 ctermfg=white guibg=gray3
highlight User9 ctermbg=233 ctermfg=141 guibg=gray3 guifg=mediumpurple1

set statusline+=%1*(%n)\ 						"buffer
set statusline+=%9*%Y\ 							"filetype
set statusline+=%2*%F\ 							"filename
set statusline+=%5*\ %h\ 						"help file flag
set statusline+=%6*%m\ 							"modified flag
set statusline+=%7*%r							"read only flag
set statusline+=%0*%=							"left/right separator
set statusline+=%3*
set statusline+=\ [%{strlen(&fenc)?&fenc:'none'},			"file encoding
set statusline+=%{&ff}]							"file format
set statusline+=%4*[%{FileSize()}]					"file size - from function
set statusline+=\ %1*%c\ 						"cursor column
set statusline+=(%l/%L)							"cursor line/total lines
set statusline+=\ %P\ 							"percent through file

function! FileSize()
	let bytes = getfsize(expand("%:p"))
	if bytes <= 0
		return ""
	endif
	if bytes < 1024
		return bytes
	else
		return (bytes / 1024) . "K"
	endif
endfunction

"highlight User1 ctermbg=215 ctermfg=16 guibg=Grey15 guifg=tomato
"highlight User2 ctermbg=234 ctermfg=208 guibg=Grey15 guifg=OrangeRed
"highlight User3 ctermbg=233 ctermfg=149 guibg=Grey15 guifg=darkolivegreen2
"highlight User4 ctermbg=233 ctermfg=131 guibg=Grey15 guifg=maroon
"highlight User5 ctermbg=233 ctermfg=9 guibg=red guifg=white
"
"highlight User6 ctermbg=73 ctermfg=16 guibg=Grey15 guifg=cornflowerblue
"highlight User7 ctermbg=110 ctermfg=16 guibg=Grey15 guifg=mediumpurple1
"highlight User8 ctermbg=101 ctermfg=16 guibg=Grey15 guifg=LawnGreen
"highlight User9 ctermbg=233 ctermfg=white guibg=Grey15
"
"set statusline+=\ %n\ 							" buffer
"set statusline+=%1*\ %Y\ 						" filetype
"set statusline+=%2*\ %F\ \%9*\ \ \ 					" filename
"set statusline+=%3*\ %h\ 						" help file flag
"set statusline+=%4*%m\ 							" modified flag
"set statusline+=%5*%r\ 							" read only flag
"
"set statusline+=%9*%=							" left/right separator
"
"set statusline+=%6*\ %{strlen(&fenc)?&fenc:'none'}\  			" file encoding
"set statusline+=%7*\ %{&ff}\ 						" file format
"set statusline+=%8*\ %{FileSize()}\ 					" file size - from function
"set statusline+=\ %9*\ %c\ 						" cursor column
"set statusline+=(%l/%L)							" cursor line/total lines
"set statusline+=\ %P\ 							" percent through file

