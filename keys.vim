let mapleader = ","

" duplicate line
nnoremap <C-d> :t.<CR>

" Window moving
noremap <A-Left> <C-w>h
noremap <A-Right> <C-w>l
noremap <A-Up> <C-w>k
noremap <A-Down> <C-w>j


" move line up / down
noremap <C-S-Down> :m .+1<CR>
noremap <C-S-Up> :m .-2<CR>

" clipboard
vmap <C-Delete> "+y
noremap <C-Insert> "+p

" NERDTree
map <C-k><C-b> :NERDTreeToggle<CR> 
map <C-t> :NERDTreeFocus<CR> 
nmap <leader>n :NERDTreeFind<CR>
  
map <F9> :set wrap!<CR>

