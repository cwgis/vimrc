"config the pathogen.vim runtime
runtime bundle/autoload/pathogen.vim
"active the pathogen plugin
call pathogen#infect()

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

" resolve the menu messy code if has chinese string
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
