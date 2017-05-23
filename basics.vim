" Basics
set nocompatible
syntax on

set number
set cursorline
set showcmd
set hidden
set wildmenu
set ruler
set ignorecase
set smartcase
set autoindent
set nostartofline
set wrap

set showmatch


" Search
set incsearch
set hlsearch
nnoremap <C-L> :nohl<CR><C-L> " Clear highlight

" visual bell
" set visualbell
set t_vb=

set mouse=a

set cmdheight=2
" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout timeoutlen=200

set pastetoggle=<F11>

" default tab settings
set shiftwidth=4
set softtabstop=4
set expandtab
set tabstop=4

" windows
set splitbelow
set splitright

set backspace=indent,eol,start
set encoding=utf-8

" GUI options
if has("gui_running")
	" remove menu bar, toolbar, right-hand scroll bar, left-hand scrollbar
	" set guioptions-=m 
	set guioptions-=T 
	set guioptions-=r
	set guioptions-=L
    set background=dark
    set guifont=Monaco\ 9
    colorscheme solarized
else
    colorscheme zenburn
endif

" Auto reload vimrc after editing
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" Enable folding
set foldmethod=indent
set foldlevel=99

" set clipboard=unnamed


set colorcolumn=80

set directory^=$HOME/.vim/tmp/
