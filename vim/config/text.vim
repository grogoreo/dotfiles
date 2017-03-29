""" Text, tab and indent related

" Will see tabstop and shiftwidth as tabs and allow deletion
set smarttab

" Tab length
set tabstop=8
set softtabstop=4
set shiftwidth=4
set noexpandtab

set linebreak
"set textwidth=80

set autoindent		" Auto indent when starting new line
set smartindent		" Smart indent after line ends with { etc.
set wrap		" Wrap lines

set showmatch		" Display matching braces

" Folds
set foldmethod=indent	" fold based on indent
set foldnestmax=3	" deepest fold is 3 levels
set nofoldenable	" dont fold by default


" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" Spelling language - 'set spell' to get spell check
setlocal spelllang=en_gb

