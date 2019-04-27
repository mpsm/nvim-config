set nocompatible

" DEIN SETUP "
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" PLUGINS "
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')
	call dein#add('tpope/vim-fugitive')
	call dein#add('scrooloose/nerdtree')
	call dein#add('vim-scripts/DirDiff.vim')
" PLUGINS END "

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

" GENERAL SETTINGS "
filetype plugin indent on
set mouse=a
set number
set nowrap
set encoding=utf-8

" SYNTAX SETTINGS "
syntax enable

" APPEARANCE "
colorscheme monokai

" APPEARANCE - STATUS BAR "
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'
