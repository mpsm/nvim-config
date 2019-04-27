set nocompatible
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

filetype plugin indent on
syntax enable
