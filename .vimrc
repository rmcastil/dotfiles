" Load pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
" If you really want to get crazy, you could even invoke Helptags in your vimrc.
" I don't like to get crazy. QUOTE: tpope

" --------
" Settings
" --------
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set expandtab
set number
set ruler

" Change leader key
let mapleader=","

" ------
" Colors
" ------
syntax enable
set background=dark
colorscheme solarized
" TODO: Install and add tomorrow theme

" ------------------
" Command-T settings
" ------------------
" set max window height
let g:CommandTMaxHeight=10

" Reflush (reindex) on every command-t
map <leader>t :CommandTFlush<cr>\|:CommandT<cr>

" rails shortcuts for views, controllers, and models folders
" CREDIT: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>
