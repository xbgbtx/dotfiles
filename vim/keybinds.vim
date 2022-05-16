" use Space as leader key
map <Space> \

"insert blank line above or below without moving cursor
nnoremap <leader>o :call append(line('.'), '')<CR>
nnoremap <leader>O :call append(line('.')-1, '')<CR>

"navigate windows with leader hjkl
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"toggle spell with leader s
nnoremap <leader>s :set spell<CR>
nnoremap <leader>S :set nospell<CR>

nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap H 0
nnoremap L $
nnoremap J G
nnoremap K gg

" Typescript
autocmd BufNewFile,BufRead *.ts set syntax=javascript
autocmd BufNewFile,BufRead *.tsx set syntax=javascript

" Buffer management
inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

nnoremap <leader>e :Ex<CR>

nnoremap <leader>c :tabnew<CR>:Ex<CR>
nnoremap <leader>L :tabn<CR>
nnoremap <leader>H :tabp<CR>

nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
nnoremap <leader>x :split<CR>:w<CR>:Ex<CR>

"Capital V/X splits multiple panes
nnoremap <leader>V :bo vsplit<CR>:w<CR>:Ex<CR>
nnoremap <leader>X :bo split<CR>:w<CR>:Ex<CR>

" Ragtag
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" Make, quickfix, localist bindings
nnoremap <leader>m :make!<CR><CR>:copen<CR><CR>
nnoremap <leader>n :lopen<CR>
nnoremap <leader>nq :lclose<CR>
nnoremap <leader>N :copen<CR>
nnoremap <leader>Nq :cclose<CR>

" Stip ansi
nnoremap <leader>a :%s/\e\[[0-9;]*m//g<CR>

" ALE language server protocol
nmap gD :ALEGoToDefinition -tab<CR>
nmap gd :ALEGoToDefinition<CR>

" JSDoc
nnoremap <leader>d :JsDoc<CR>
