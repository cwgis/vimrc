" set t_Co > 255 for molokai colorscheme because linux's TERM is not GUI
set t_Co=256

"set the color scheme for programming language
colorscheme molokai

" enable plugin of every filetype
"filetype plugin on

" display tab and whitespace to check
set list
set listchars=tab:>.,trail:.

"make the syntax enable syntax on
syntax on

"enable spell check and set language to English"
setlocal spell spelllang=en_us

"Highlight search results"
set hlsearch
set incsearch
set cursorline
"Disable backwards compatibility with vi"
set nocompatible

"set line number
set number

"Disable line wrapping"
set nowrap

"delete the swap file when edit an file
set nobackup
set nowb
set noswapfile

"Size of tabs if tab are enabled"
set tabstop=4
set smarttab
set shiftwidth=4
set softtabstop=4
" enabla for listchars
set noexpandtab

"Enable auto indentation"
set autoindent

" set backspace action
set backspace=indent,eol,start

" resolve the term and context has chinese string
set encoding=utf-8
set fileencodings=ucs-bom,utf-8
set fileformats=unix,dos,mac

" start scrolling when we're 5 lines away from margins
set scrolloff=5
set sidescrolloff=15
set sidescroll=1

"Display mode your in below
set showmode

" display commands executed and set cmd height
set showcmd
set cmdheight=2

"CMD completeion
set wildmenu

" set mouse enable
set mouse=a

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

"jump to last cursor position when opening a file
"don't do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
	if &filetype !~ 'svn\|commit\c'
		if line("'\"") > 0 && line("'\"") <= line("$")
			exe "normal! g`\""
				normal! zz
		endif
	end
endfunction
