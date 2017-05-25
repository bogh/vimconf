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

noremap <Leader>bd :bdelete<CR> " Close current buffer
noremap <Leader>ba :BufOnly<CR> " Close all other buffers

" clipboard
vmap <C-Delete> "+y
noremap <C-Insert> "+p

" NERDTree
map <C-k><C-b> :NERDTreeToggle<CR> 
map <C-t> :NERDTreeFocus<CR> 
nmap <leader>n :NERDTreeFind<CR>

" Indent / Unindent
  
map <F9> :set wrap!<CR>
"
noremap <Leader>cd :cd %:p:h<CR> " CD into directory of current file

" TagBar
nmap <F8> :TagbarToggle<CR>

" YCM Shortcuts
nnoremap <leader>d :YcmCompleter GoTo<CR>

noremap <C-Tab> :bnext<CR>
noremap <C-S-Tab> :bprevious<CR>

" CtrlP
noremap <leader>r :CtrlPBufTag<CR>

" Golang
noremap <leader>.b :GoBuild<CR>
noremap <leader>.d :GoDecls<CR>
noremap <leader>.l :GoDeclsDir<CR>
noremap <leader>.p :GoImport
noremap <leader>.g :GoDef<CR>

