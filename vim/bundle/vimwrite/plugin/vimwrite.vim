"
""" Writing Environment
"

if exists("g:loaded_vimwrite") || &cp || v:version < 700
    finish
endif
let g:loaded_vimwrite = 1

function! WritingEnv()
    setlocal nonumber
    setlocal noshowmatch
    setlocal textwidth=100
    setlocal formatoptions=taw	" t Auto-wrap text using textwidth
					" a Auto format paragraphs
					" w Trailing white space indicates P
					" n Recognise numbered lists
					" 1 Don't break line after 1 letter word
					" 2 Use second line indent of paragraph
    "May not be useful
    "setlocal formatoptions+=crqj	" c Auto-wrap comments
					" r Auto insert comment leader a/ <ENTER>
					" q Allow gq auto formatting
					" j Joined lines removes comment leader

    setlocal timeoutlen=1000 ttimeoutlen=0 " because InserLeave <ESC> lags
    
    "setlocal spell			" Spellcheck

    " litecorrect
"    call litecorrect#init()
    " textobj_quote
"    call textobj#quote#init()
    " textobj_sentence
"    call textobj#sentence#init()

"    function! EnterInsert()
"	setlocal laststatus=0
"	setlocal noshowmode
"	Limelight
"    endfunction
"
"    function! LeaveInsert()
"	setlocal laststatus=2
"	setlocal showmode
"	Limelight!
"	redraw!
"    endfunction

    "au! InsertEnter * call EnterInsert()
    "au! InsertLeave * call LeaveInsert()

    "highlight Normal ctermbg=black ctermfg=white
    "highlight NonText ctermfg=bg guifg=bg
endfunction
