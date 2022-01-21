" Package manager for VIM
packadd minpac
call minpac#init()

" ------------------------------------------------------------------------------
" HOWTO
" ------------------------------------------------------------------------------
" For tag jumping
" ---------------
" !ctags -R --exclude=.git --exclude=node_modules .
" - ^] to jump to tag under cursor
" - g^] to see the list of all the tags for the one you found
" - ^t to jump back up the tag stack
"
" For Autocomplete
" ----------------
" - ^x^n for just this file
" - ^x^f for just filenames
" - ^n
"
" ------------------------------------------------------------------------------
" Settings
" ------------------------------------------------------------------------------
" show line numbers
set nu rnu
" allows for pasting from other applications w/o autoindent
set pastetoggle=<F2>
" Change leader key
let mapleader=","
" Always show the filename
set ls=2
" For folder specific vimrc's
" set exrc
" set secure

" ------------------------------------------------------------------------------
" Commands
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" For searching into subfolders
" ------------------------------------------------------------------------------
" set path+=**
" speeds up the search slightly
set wildignore+=*/node_modules/*,*/bin/*,*/script/*,*/log/*
" :find <file name>         " allows us to find the file recursively
"                             https://youtu.be/XA2WjJbmmoM?t=585

" ------------------------------------------------------------------------------
" Whitespace Settings
" ------------------------------------------------------------------------------
set expandtab
set softtabstop=2
set shiftwidth=2
set listchars=tab:>\ ,trail:-
set list

function! StripWhitespace()
  exec ':%s/\s\+$//gc'
endfunction
map <leader>ws :call StripWhitespace()<CR>

" ------------------------------------------------------------------------------
" Search
" ------------------------------------------------------------------------------
" show search as its being typed
set ignorecase

" ------------------------------------------------------------------------------
" Colors
" ------------------------------------------------------------------------------
syntax enable
colorscheme onedark

" ------------------------------------------------------------------------------
" Cut to clipboard
" ------------------------------------------------------------------------------
map <leader>xl "*dd

" ------------------------------------------------------------------------------
" Writing
" ------------------------------------------------------------------------------
func WordProcessorMode()
  map j gj
  map k gk
  set wrap
  set linebreak
" 'Y' should yank to the end of line
" 'Y' should yank to the end of line
map Y y$
map Y y$
  set nolist
  set spell
endfu
com! WP call WordProcessorMode()
