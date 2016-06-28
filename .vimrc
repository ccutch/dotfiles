set number
set relativenumber
set autoindent
set ignorecase
set hlsearch

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vunde.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'joyent/node'
"Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'nvie/vim-flake8'

call vundle#end()

syntax enable
filetype plugin on
" vim:foldmethod=marker:foldlevel=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4

set foldmethod=indent
set foldnestmax=2
set foldlevel=99

let g:jsx_ext_required = 0
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,^\.git$'
