" Easy switch window navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Use shift-H and shift-L for move to beginning/end
nnoremap H 0
nnoremap L $

" switch to display line numer
nmap <silent> <F5> :set invnu<CR>

" more easy <Esc>
imap <silent> ii <Esc>:w<CR>

" Strip all trailing whitespace from a file, using ,w
"nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>
