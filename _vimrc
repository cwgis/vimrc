syntax on
colorscheme vilight
setlocal spell spelllang=en_us													"Enable spell check and set language to English"
set hlsearch																	"Highlight search results"
set nocompatible																"Disable backwards compatibility with vi"
"set guifont=monaco:h14
set guifont=Courier\ New:h13:b

set list
set listchars=tab:>.,trail:.

set number
"set relativenumber																"Relative line numbers"

set cursorline																	"Highlight current line"
set guicursor+=i:ver10-iCursor
set nowrap																		"Disable line wrapping"

set tabstop=4																	"Size of tabs if tab are enabled"
"set expandtab																	"Use tabs instead of tabs"
set shiftwidth=4																"Move
"set softtabstop=4

set autoindent																	"Enable auto indentation"


" resolve the term and context has chinese string
set fileencodings=utf-8,gb2312,gb18030
set termencoding=utf-8
set encoding=prc

" resolve the menu messy code if has chinese string
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim


highlight cMember gui=bold



set showmode																	"Display mode your in below"
set showcmd																		"Display commands executed"
set wildmenu																	"CMD completeion"
set cursorline																	"Hightlight cursor line"



set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

