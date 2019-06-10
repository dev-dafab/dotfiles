autocmd BufRead .jscsrc set filetype=json
autocmd BufRead .jshintrc set filetype=json
autocmd BufRead .bowerrc set filetype=json
autocmd BufRead .babelrc set filetype=json
autocmd BufRead .eslintrc set filetype=json
autocmd BufRead .tslintrc set filetype=json

autocmd BufNewFile,BufRead *.json set filetype=json

augroup json_autocmd
  autocmd!
  autocmd FileType json setlocal autoindent
  autocmd FileType json setlocal formatoptions=tcq2l
  autocmd FileType json setlocal foldmethod=syntax
augroup END
