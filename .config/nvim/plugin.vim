" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call minpac#add('k-takata/minpac', {'type': 'opt'})   " Package manager
call minpac#add('tpope/vim-surround')                 " cs<char> to change surrounding char
" Look and feel of VIM
call minpac#add('vim-airline/vim-airline')            " Status bar on the bottom
call minpac#add('joshdick/onedark.vim')               " Color Theme

call minpac#add('preservim/nerdtree')
call minpac#add('neomake/neomake')                    " Gives us infline feedback
call minpac#add('thoughtbot/vim-rspec')               " Allows shortcuts to calling specs

" Language Server Protocol
call minpac#add('neovim/nvim-lspconfig')

" Fuzzy finding
" brew install ripgrep in order to get it to work
call minpac#add('nvim-lua/plenary.nvim')              " Telescope dependency
call minpac#add('nvim-telescope/telescope.nvim')

call minpac#add('nvim-treesitter/nvim-treesitter')
