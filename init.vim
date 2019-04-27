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

	call dein#add('kergoth/vim-bitbake')
	call dein#add('dag/vim-fish')

	call dein#add('ntpeters/vim-better-whitespace.git')
	call dein#add('Raimondi/delimitMate')
	call dein#add('Shougo/deoplete.nvim')
	call dein#add('zchee/deoplete-clang')
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

" SYSTEM SETTINGS "
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" SYNTAX SETTINGS "
syntax enable
augroup filetype
	au! BufRead,BufNewFile *.proto setfiletype proto
	au! BufRead,BufNewFile meson.build setfiletype meson
augroup end

" APPEARANCE "
colorscheme monokai

" APPEARANCE - STATUS BAR "
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'dark'

" APPEARANCE - VERTICAL DIFF "
set diffopt+=vertical

" WHITESPACE "
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1

" CODE COMPLETION "
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-3.8'
