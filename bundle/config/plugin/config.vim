" set t_Co > 255 for molokai colorscheme because linux's TERM is not GUI
set t_Co=256

" set the color scheme for programming language
colorscheme molokai
"colorscheme desert

" enable plugin of every filetype
filetype plugin on
filetype indent on

" display tab and whitespace to check
set list
set listchars=tab:>.,trail:.

" turn off lazy redraw
set nolazyredraw

" make the syntax enable syntax on
syntax on

" enable spell check and set language to English"
setlocal spell spelllang=en_us

" highlight search results"
set hlsearch
set incsearch
set cursorline
" disable backwards compatibility with vi"
set nocompatible

" set line number
set number
set numberwidth=5

" disable line wrapping"
set nowrap

" delete the swap file when edit an file
set nobackup
set nowb
set noswapfile

" size of tabs if tab are enabled"
set tabstop=4
set smarttab
set shiftwidth=4
set softtabstop=4

" enabla for listchars
set noexpandtab

" enable auto indentation"
set autoindent
set smartindent

" auto read while changing at other place
" set autoread

" auto toggle to current directory
set autochdir

" set backspace action
set backspace=indent,eol,start

" resolve the term and context has chinese string
set fileencoding=utf-8
set termencoding=utf-8
set fileformats=unix,dos,mac

" use utf-8 without BOM
set encoding=utf-8 nobomb

" start scrolling when we're 5 lines away from margins
set scrolloff=5
set sidescrolloff=15
set sidescroll=1

" display mode your in below
set showmode

" display commands executed and set cmd height
set showcmd
set cmdheight=2

" highlight 80 column
set cc=90

" always show the status line
set laststatus=2

" CMD completeion
set wildmenu

" set fold
set foldmethod=syntax
set foldlevelstart=99

" split the window on right and bottom
set splitright

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" jump to last cursor position when opening a file
" don't do it when writing a commit log entry
autocmd BufReadPost * call SetCursorPosition()
function! SetCursorPosition()
	if &filetype !~ 'svn\|commit\c'
		if line("'\"") > 0 && line("'\"") <= line("$")
			exe "normal! g`\""
				normal! zz
		endif
	end
endfunction
