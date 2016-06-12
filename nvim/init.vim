set encoding=utf-8

call plug#begin()
Plug 'tmhedberg/SimpylFold'
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'freeo/vim-kalisi'
Plug 'alfredodeza/pytest.vim'
Plug 'weynhamz/vim-plugin-minibufexpl'

call plug#end()


let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


syntax enable
filetype plugin indent on
colorscheme kalisi

set background=dark
set t_Co=256
set nu

nnoremap ; :
let mapleader=","

nmap <silent> <leader>t :Pytest method<CR>
nmap <silent> <leader>T :Pytest file<CR>

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
