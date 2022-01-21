" ------------------------------------------------------------------------------
" Running Tests
" ------------------------------------------------------------------------------
let g:rspec_command = "term time bundle exec rspec \"{spec}\""
map <Leader>c :wa\|:vsplit<CR>\|:call RunCurrentSpecFile()<CR>
map <Leader>s :wa\|:vsplit<CR>\|:call RunNearestSpec()<CR>
map <Leader>r :wa\|:vsplit<CR>\|:call RunLastSpec()<CR>
