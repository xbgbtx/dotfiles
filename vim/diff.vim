" When using vimdiff or diff mode
highlight DiffAdd    term=bold         ctermbg=darkgreen ctermfg=white cterm=bold guibg=DarkGreen  guifg=White    gui=bold
highlight DiffText   term=reverse,bold ctermbg=red       ctermfg=yellow cterm=bold guibg=DarkRed    guifg=yellow   gui=bold
highlight DiffChange term=bold         ctermbg=black     ctermfg=white cterm=bold guibg=Black      guifg=White    gui=bold
highlight DiffDelete term=none         ctermbg=darkblue  ctermfg=white cterm=none guibg=DarkBlue   guifg=DarkBlue gui=none

if &background == "light"
   " Changes when bg=white fg=black
   highlight DiffAdd                   ctermfg=black cterm=bold guibg=green    guifg=black
   highlight DiffText   ctermbg=yellow ctermfg=red   cterm=bold    guibg=yellow     guifg=red
   highlight DiffChange ctermbg=none   ctermfg=none  cterm=bold    guibg=white      guifg=black
   highlight DiffDelete    guibg=lightblue  guifg=lightblue
endif

" When viewing a diff or patch file
highlight diffRemoved term=bold ctermbg=black   ctermfg=red cterm=bold guibg=DarkRed     guifg=white gui=none
highlight diffAdded   term=bold ctermbg=black   ctermfg=green cterm=bold guibg=DarkGreen   guifg=white gui=none
highlight diffChanged term=bold ctermbg=black   ctermfg=yellow cterm=bold guibg=DarkYellow  guifg=white gui=none
highlight diffLine    term=bold ctermbg=magenta ctermfg=white cterm=bold guibg=DarkMagenta guifg=white gui=none
highlight diffFile    term=bold ctermbg=yellow  ctermfg=black cterm=none guibg=DarkYellow  guifg=white gui=none

if &background == "light"
   " Changes when bg=white fg=black
   highlight diffRemoved cterm=none guibg=Red    guifg=black
   highlight diffAdded   cterm=none guibg=Green    guifg=black
   highlight diffChanged cterm=none guibg=Yellow    guifg=black
   highlight diffLine    cterm=none guibg=Magenta    guifg=black
   highlight diffFile    cterm=none guibg=Yellow    guifg=black
endif

if &diff
    set cursorline
    map ] ]c
    map [ [c
    " hi DiffAdd    ctermfg=233 ctermbg=LightGreen guifg=#003300 guibg=#DDFFDD gui=none cterm=none
    " hi DiffChange ctermbg=white  guibg=#ececec gui=none   cterm=none
    " hi DiffText   ctermfg=233  ctermbg=yellow  guifg=#000033 guibg=#DDDDFF gui=none cterm=none
endif
