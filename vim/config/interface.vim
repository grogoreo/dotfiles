""" Interface

" Window title is displayed
set title

" Set 4 lines to the cursor - when moving vertically using j/k
set scrolloff=4

" Highlight the screen line of the cursor
set cursorline

" Line numbers
set number

" Relative numbers
set relativenumber

" Turn on the WiLd menu (e.g. when pressing <TAB> for autocompletion)
set wildmenu
set wildmode=list:longest,full

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hidden

" Configure backspace so it acts as it should act
set backspace=indent,eol,start
set whichwrap+=<,>

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Quick drawing for terminal
set ttyfast

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Visual notification rather than sound on error
set visualbell

" Enable mouse
set mouse=a

" Put ← to show a soft line break ↳ ←
let &showbreak = '  ↳  '

" Default is to split to the left and above
set splitbelow
set splitright

set fillchars=stlnc:-,vert:\│,fold:─,diff:─

"let &colorcolumn="80,".join(range(120,999),",")

" Enable syntax highlighting
syntax enable

"" gVim
if has("gui_running")
    set lines=30 " Height
    set columns=100 " Width
    set guioptions-=T " Remove toolbar
    set guioptions+=e " Add tab pages
    set guioptions-=t " Don't allow tearoff menus
    set guioptions+=c " Use console dialogs instead of popup
    set guitablabel=%M\ %t

    highlight Comment gui=italic

    if has("gui_gtk2")
	set guifont=Inconsolata\ Medium\ 12
    elseif has("x11")
	" Also for GTK 1
	set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
    elseif has("gui_win32")
	set guifont=Luxi_Mono:h12:cANSI
    elseif has("gui_macos")
	set guifont=Monaco:h10
    endif
endif
