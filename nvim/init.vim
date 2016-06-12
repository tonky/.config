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
Plug 'alfredodeza/pytest.vim'
Plug 'weynhamz/vim-plugin-minibufexpl'
Plug 'vim-airline/vim-airline'


call plug#end()


let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


syntax enable
filetype plugin indent on
colorscheme pablo

set background=dark
set t_Co=256
set nu

nnoremap ; :
let mapleader=","

map <leader>t :Pytest method<CR>
map <leader>T :Pytest file<CR>
map <leader>b :CtrlPBuffer<cr>
map <Leader>m :!mypy --fast-parser %<cr>

set backupdir=/tmp
set directory=/tmp

" select text after pasting
noremap gV `[v`]

" and don't lose selection on indent
vnoremap < <gv
vnoremap > >gv
" let g:syntastic_python_pylint_post_args="--max-line-length=120"

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E501,E402'
