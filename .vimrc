" ------------------------------------------------------------------------------
" Pathogen - for managing vim runtime (ie - loading plugins)
" ------------------------------------------------------------------------------
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
" If you really want to get crazy, you could even invoke Helptags in your vimrc.
" I don't like to get crazy. QUOTE: tpope

" ------------------------------------------------------------------------------
" Settings
" ------------------------------------------------------------------------------
" allow unsaved background buffers and remember marks/undo for them
set hidden
" remember more commands and search history
set history=10000
set number
set ruler
" allows for pasting from other applications w/o autoindent
set pastetoggle=<F2>
" Change leader key
let mapleader=","
" Prevent Vim from clobbering the scrollback buffer. See
" http://www.shallowsky.com/linux/noaltscreen.html
set t_ti= t_te=
" 'Y' should yank to the end of line
map Y y$
" Always show the filename
set ls=2
" For folder specific vimrc's
set exrc
set secure

" ------------------------------------------------------------------------------
" Whitespace Settings
" ------------------------------------------------------------------------------
set expandtab
set autoindent
set softtabstop=2
set shiftwidth=2
set listchars=tab:>\ ,trail:-
set list

function! StripWhitespace()
  exec ':%s/\s\+$//gc'
endfunction
map <leader>s :call StripWhitespace()<CR>

" ------------------------------------------------------------------------------
" Search
" ------------------------------------------------------------------------------
" show search as its being typed
set incsearch
set hlsearch
set ignorecase
" press enter to disable highlighting temporarily
nnoremap <CR> :nohlsearch<CR><CR>

" ------------------------------------------------------------------------------
" Colors
" ------------------------------------------------------------------------------
syntax enable
set background=dark
colorscheme solarized

" ------------------------------------------------------------------------------
" Command-T settings
" ------------------------------------------------------------------------------
" set max window height
let g:CommandTMaxHeight=10
" Reflush (reindex) on every command-t
map <leader>t :CommandTFlush<cr>\|:CommandT<cr>
" rails shortcuts for views, controllers, and models folders
" CREDIT: https://github.com/garybernhardt/dotfiles/blob/master/.vimrc
map <leader>gv :CommandTFlush<cr>\|:CommandT app/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT app/controllers<cr>
map <leader>gm :CommandTFlush<cr>\|:CommandT app/models<cr>

" ------------------------------------------------------------------------------
" Hard Mode
" ------------------------------------------------------------------------------
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>

" ------------------------------------------------------------------------------
" Cut to clipboard
" ------------------------------------------------------------------------------
map <leader>xl "*dd

" ------------------------------------------------------------------------------
" Store temporary files in a central spot
" ------------------------------------------------------------------------------
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" ------------------------------------------------------------------------------
" Running Tests
" ------------------------------------------------------------------------------
let g:rspec_command = "!time bundle exec rspec {spec}"
map <Leader>c :wa\|:call RunCurrentSpecFile()<CR>
map <Leader>s :wa\|:call RunNearestSpec()<CR>
map <Leader>r :wa\|:call RunLastSpec()<CR>
map <Leader>a :wa\|:call RunAllSpecs()<CR>

" ------------------------------------------------------------------------------
" Writing
" ------------------------------------------------------------------------------
func WordProcessorMode()
  map j gj
  map k gk
  set wrap
  set linebreak
  set nolist
  set spell
endfu
com! WP call WordProcessorMode()
