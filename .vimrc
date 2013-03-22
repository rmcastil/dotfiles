" Load pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Change leader key
let mapleader=","

" Line numbers
set number

" Syntax highlighting
syntax enable
set background=dark
colorscheme solarized
" TODO: Install and add tomorrow theme

" ------------------
" Command-T settings
" ------------------
" set max window height
let g:CommandTMaxHeight=10
