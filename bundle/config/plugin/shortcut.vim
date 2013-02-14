" define leader key is ,
let mapleader = ","

" Shouldn't need shift
nnoremap ; :

" more easy <Esc>
imap <silent> ii <Esc>:w<CR>

" easier navigation between split windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Use shift-H and shift-L for move to beginning/end
nnoremap H 0
nnoremap L $

" map tabnew and tabclose
imap <C-t> <Esc>:tabnew<CR>
nmap <C-t> :tabnew<CR>
imap <C-w> <Esc>:tabclose<CR>
nmap <C-w> :tabclose<CR> " indentation shortcut
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" copy to end of line using Y
nmap Y y$

" prevent repeat input after auto complete
function! ClosePair(char)
	if getline('.')[col('.') - 1]== a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

" auto complete parentheses
inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>

" ======================================
"  custom key and plugin configurations
" ======================================
" toggle line numer using F5
nmap <silent> <F5> :set invnu<CR>

" toggle nerdtree using nt
nmap nt :NERDTreeToggle<CR>

" enable bufexplorer using bf
nmap bf :BufExplorer<CR>

" enable tagbar plugin
nmap tt :TagbarToggle<CR>

" press space to clear search highlighting and any message
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
