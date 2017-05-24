

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'

" Python specific
Plugin 'vim-scripts/indentpython.vim'
Plugin 'python-mode/python-mode'
Plugin 'jmcantrell/vim-virtualenv'

Plugin 'Valloric/YouCompleteMe'

Plugin 'jiangmiao/auto-pairs'

" NERDTree
Plugin 'scrooloose/nerdtree'
" Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'ap/vim-buftabline'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/BufOnly.vim'

" Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'

" Plugin 'craigemery/vim-autotag'
" Plugin 'xolox/vim-easytags'
" Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'


" Golang specific

call vundle#end() 

filetype indent plugin on

" NERDTree
" Auto open on enter
autocmd vimenter * NERDTree

let g:autotagTagsFile="tags"
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 0
 
" Python Mode
let g:pymode = 1
let g:pymode_warnings = 1
let g:pymode_options = 1
let g:pymode_options_colorcolumn = 1

let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_folding = 1

let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:pymode_lint_ignore = "E501"
"let g:virtualenv_directory = "$HOME/work/environments/"


" TagBar
nmap <F8> :TagbarToggle<CR>

" Guttentags
let g:gutentags_ctags_tagfile=".tags"
