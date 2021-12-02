" ------------------------------------------------------------------------------
" Running Tests
" ------------------------------------------------------------------------------
let g:rspec_command = "term time bundle exec rspec \"{spec}\""
map <Leader>c :wa\|:call RunCurrentSpecFile()<CR>
map <Leader>s :wa\|:call RunNearestSpec()<CR>
map <Leader>r :wa\|:call RunLastSpec()<CR>
