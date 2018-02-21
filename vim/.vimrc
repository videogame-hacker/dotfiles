if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'lilydjwg/colorizer'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'w0ng/vim-hybrid'

call plug#end()

set ruler
set mouse=a

set tabstop=4
set softtabstop=4

syntax on

" autocmd ColorScheme * highlight! Normal ctermbg=NONE guibg=NONE

set background=dark

let g:hybrid_use_Xresources = 1
colorscheme hybrid

filetype indent on

set incsearch
set hlsearch

nnoremap j gj
nnoremap k gk

set number

