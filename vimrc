set nocompatible              " be iMproved, required
set hidden
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Syntastic
Plugin 'vim-syntastic/syntastic'

" fugitive
Plugin 'tpope/vim-fugitive'

" Ctrl space
Plugin 'vim-ctrlspace/vim-ctrlspace'

" Dracula theme
Plugin 'dracula/vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Syntastic configuration
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%{fugitive#statusline()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

let mapleader="," "Remapping leader to ',' instead of '\'

" Enable editing/sourcing .vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Setting numbers
set number
set relativenumber

" Setting indentation and spacing
set smartindent
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" Setting search
set incsearch
set hlsearch
set smartcase
nnoremap <leader><space> :nohlsearch<CR>>

" Setting other vim configs
set encoding=utf-8
set backspace=indent,eol,start
set wildmenu
set lazyredraw
set laststatus=2

" Setting Colorscheme see http://vimcolors.com
"color dracula
"colorscheme nordisk
"colorscheme swamplight
"colorscheme dzo
"colorscheme luna
"colorscheme quantum
colorscheme neodark
