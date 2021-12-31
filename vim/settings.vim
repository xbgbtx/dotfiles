syntax on


set autoindent
set tabstop=4
set shiftwidth=4
set dir=/tmp/
set relativenumber 
set number

"black line at 80 chars width
highlight ColorColumn ctermbg=0 cterm=bold guibg=#FFFFFF
hi SpellBad term=reverse ctermfg=190 gui=undercurl ctermbg=88
set colorcolumn=78,79

set cursorline
hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

highlight MatchParen cterm=bold ctermfg=black ctermbg=blue

highlight Search cterm=bold ctermfg=black ctermbg=yellow

set hlsearch

set backspace=indent,eol,start



set listchars=tab:\|\ 
set pastetoggle=<F2>
set mouse=a
set incsearch

set splitbelow
set splitright

" Return to the same line you left off at
augroup line_return
   au!
   au BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \	execute 'normal! g`"zvzz' |
      \ endif
augroup END

" Trigger `autoread` when files changes on disk
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * 
   \ if mode() != 'c' | checktime | endif
set autoread 
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
