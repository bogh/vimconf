

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'flazz/vim-colorschemes'

" Python specific
Plugin 'vim-scripts/indentpython.vim'

" NERDTree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'

" Golang specific

call vundle#end() 

filetype indent plugin on

" NERDTree
" Auto open on enter
autocmd vimenter * NERDTree


