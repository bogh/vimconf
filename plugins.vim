

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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'ap/vim-buftabline'
" Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/BufOnly.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
"Plugin 'airblade/vim-gitgutter'
" Plugin 'craigemery/vim-autotag'
" Plugin 'xolox/vim-easytags'
" Plugin 'xolox/vim-misc'
Plugin 'majutsushi/tagbar'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
"Plugin 'Yggdroot/indentLine'


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

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


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
"let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:pymode_lint_ignore = "E501"
"let g:virtualenv_directory = "$HOME/work/environments/"


" Guttentags
let g:gutentags_ctags_tagfile=".tags"

" CtrlP
 let g:ctrlp_dont_split = 'NERD'

 " tagbar
"  let g:tagbar_left = 1
 let g:tagbar_autofocus = 1
 let g:tagbar_autoclose = 1
 let g:tagbar_case_insensitive = 1
 let g:tagbar_show_visibility = 1
 let g:tagbar_autoshowtag = 1
 let g:tagbar_previewwin_pos = 'aboveleft'
 let g:tagbar_foldlevel = 10

 " Golang
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
"let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
" let g:go_highlight_extra_types = 1
let g:go_def_mode = 'guru'
let g:go_auto_type_info = 1
let g:go_auto_sameids = 1

 " IndentLine
let g:indentLine_setColors = 1
