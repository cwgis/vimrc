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
"let &termencoding = &encoding
set encoding=utf-8
set fileencodings=ucs-bom,utf-8
set fileformats=unix,dos,mac

"Display mode your in below
set showmode

"Display commands executed
set showcmd

"CMD completeion
set wildmenu

" set mouse enable
set mouse=a

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e
