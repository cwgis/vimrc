"make the syntax enable
syntax on

"set the color scheme for programming language
colorscheme vilight

"enable spell check and set language to English"
setlocal spell spelllang=en_us

"Highlight search results"
set hlsearch

"Hightlight cursor line
set cursorline

"Disable backwards compatibility with vi"
set nocompatible

"config the full screen when start and set the style of font
if (has ("gui_win32"))
	"config the full screen
	au GUIEnter * simalt ~x
	set guifont=Courier\ New:h13:b
elseif (has ("gui_x11"))
	set guifont=Droid\ Sans\ Mono\ 14
else
	set guifont=Droid\ Sans\ Mono:h18
endif

highlight cMember gui=bold

"display tab and whitespace to check
set list
set listchars=tab:>.,trail:.

"set line number
set number

"Highlight current line
set cursorline
set guicursor+=i:ver10-iCursor

"Disable line wrapping"
set nowrap

" delete the swap file when edit an file
set nobackup
set nowb
set noswapfile

"Size of tabs if tab are enabled"
set tabstop=4

"move
set shiftwidth=4
set softtabstop=4

"Enable auto indentation"
set autoindent

" set backspace action
set backspace=indent,eol,start

" resolve the term and context has chinese string
set fileencoding=utf-8
set termencoding=utf-8
set encoding=prc

" resolve the menu messy code if has chinese string
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"Display mode your in below
set showmode

"Display commands executed
set showcmd

"CMD completeion
set wildmenu
