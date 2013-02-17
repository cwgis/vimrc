" define leader key is ,
let mapleader = ","

" shouldn't need shift
nnoremap ; :

" :W when I mean to :w and :Q mean to :q
command! W w
command! Q q

" more easy <Esc>
imap <silent> ii <Esc>:w<CR>

" easier navigation between split windows
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Use shift-H and shift-L for move to beginning/end
nnoremap H ^
nnoremap L $
nnoremap M %

" folding keymap
nnoremap zz za

" map tabnew and tabclose
imap <C-t> <Esc>:tabnew<CR>
nmap <C-t> :tabnew<CR>
imap <C-w> <Esc>:tabclose<CR>
nmap <C-w> :tabclose<CR>

" <tab> and <shift><tab> to increase and decrease the syntax identation
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

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! %!sudo tee > /dev/null %

" ======================================
"  custom key and plugin configurations
" ======================================
" toggle line numer using F5
"nmap <silent> nu :set invnu<CR>

" toggle nerdtree using nt
nmap nt :NERDTreeToggle<CR>

" enable bufexplorer using bf
nmap bf :BufExplorer<CR>

" enable tagbar plugin
nmap tt :TagbarToggle<CR>

" enable MRU plugin
nmap mr :MRU<CR>

" press space to clear search highlighting and any message
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>
