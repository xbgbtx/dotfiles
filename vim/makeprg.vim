" makeprg.vim
" Called from vimrc to set 'makeprg' according to filetype

autocmd FileType c setlocal makeprg=c-unit-test.sh\ %
