set nocompatible

" DEIN SETUP "
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

" PLUGINS "

" PLUGINS END "

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif

" GENERAL SETTINGS "
filetype plugin indent on
syntax enable

" APPEARANCE "
colorscheme monokai
