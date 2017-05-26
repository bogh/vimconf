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
noremap <Leader>bo :BufOnly<CR> " Close all other buffers

" clipboard
vmap <C-Delete> "+y
noremap <C-Insert> "+p

" NERDTree
" map <F2> :NERDTreeToggle<CR>
map <F2> :NERDTreeToggle<CR> 
nmap <F3> :NERDTreeFind<CR>

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
noremap <leader>pt :CtrlPBufTag<CR>
noremap <leader>pb :CtrlPBookmarkDir<CR>
noremap <leader>pab :CtrlPBookmarkDirAdd<CR>
noremap <leader>be :CtrlPBuffer<CR>

" Golang
" run :GoBuild or :GoTestCompile based on the go file
function! s:build_go_files()
  let l:file = expand('%')
  if l:file =~# '^\f\+_test\.go$'
    call go#cmd#Test(0, 1)
  elseif l:file =~# '^\f\+\.go$'
    call go#cmd#Build(0)
  endif
endfunction
autocmd FileType go nmap <leader>.b :<C-u>call <SID>build_go_files()<CR>
" noremap <leader>.b :GoBuild<CR>
noremap <leader>.d :GoDecls<CR>
noremap <leader>.l :GoDeclsDir<CR>
noremap <leader>.p :GoImport
noremap <leader>.g :GoDef<CR>

