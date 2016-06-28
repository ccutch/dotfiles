"vim options
set number
set relativenumber
set autoindent
set ignorecase
set hlsearch

"vundle swag
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
Plugin 'mbbill/undotree'

call vundle#end()

syntax enable
filetype plugin on

"solarized baby
try
  set background=light
  let g:solarized_termcolors=256
  colorscheme solarized
  let g:airline_theme = 'solarized'   " -- Airline color theme
  " Quickly toggle background
  map <F10> :let &background = ( &background == "dark"?  "light" : "dark" )<CR>
catch
  colorscheme default
endtry



"I like 2 spaces so that is the default
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
"make required tabs not spaces
autocmd FileType make setlocal noexpandtab
"pep8 requires 4 spaces so we do that for python
autocmd FileType python setlocal softtabstop=4
autocmd FileType python setlocal shiftwidth=4
autocmd FileType python setlocal tabstop=4
autocmd BufWritePost,BufRead *.py call Flake8()

"Folding functions and classes
set foldmethod=indent
set foldnestmax=2
set foldlevel=99

"let jsx work on .js files
let g:jsx_ext_required = 0

"Hide swap files, python compiled files, and git files from explorer
let g:netrw_list_hide= '.*\.swp$,.*\.pyc$,^\.git$'

"undotree save file histories to ~/.vim_undotree_history
if has("persistent_undo")
    set undodir=~/.vim_undotree_history/
    set undofile
endif
