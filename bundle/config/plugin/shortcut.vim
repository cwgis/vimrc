" define leader key is ,
let mapleader = ","

" switch to display line numer
nmap <silent> <F5> :set invnu<CR>

" use ctrl + d to open NERDTree plugin
nmap nt :NERDTree<CR>

" enable bufexplorer by ee shortcut
nmap bf :BufExplorer<CR>

" more easy <Esc>
imap <silent> ii <Esc>:w<CR>

" Strip all trailing whitespace from a file, using ,w
nnoremap <leader>w :%s/\s\+$//<CR>:let @/=''<CR>

" Easy switch window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Use shift-H and shift-L for move to beginning/end
nnoremap H 0
nnoremap L $

" insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <Delete>
