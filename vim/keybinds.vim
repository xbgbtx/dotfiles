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

map <tab> %
"nnoremap <Space> za
"nnoremap <leader>z zMzvzz
nnoremap vv 0v$
nnoremap <leader><tab> :set list!<cr>
" General
inoremap <leader>for <esc>Ifor (int i = 0; i < <esc>A; i++) {<enter>}<esc>O<tab>
inoremap <leader>if <esc>Iif (<esc>A) {<enter>}<esc>O<tab>


" Java
inoremap <leader>sys <esc>ISystem.out.println(<esc>A);
vnoremap <leader>sys yOSystem.out.println(<esc>pA);

" Java
inoremap <leader>con <esc>Iconsole.log(<esc>A);
vnoremap <leader>con yOconsole.log(<esc>pA);

" C++
inoremap <leader>cout <esc>Istd::cout << <esc>A << std::endl;
vnoremap <leader>cout yOstd::cout << <esc>pA << std:endl;

" C
inoremap <leader>out <esc>Iprintf(<esc>A);<esc>2hi
vnoremap <leader>out yOprintf(, <esc>pA);<esc>h%a

" Typescript
autocmd BufNewFile,BufRead *.ts set syntax=javascript
autocmd BufNewFile,BufRead *.tsx set syntax=javascript

" Markup
inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>
" File and Window Management 
inoremap <leader>w <Esc>:w<CR>
nnoremap <leader>w :w<CR>

inoremap <leader>q <ESC>:q<CR>
nnoremap <leader>q :q<CR>

"Save anq quit unmapped until good candidate key found
"inoremap <leader>x <ESC>:x<CR>
"nnoremap <leader>x :x<CR>

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

" Make + quickfix keybind
nnoremap <leader>m :make!<CR><CR>:copen<CR><CR>
nnoremap <leader>n :cnext<CR>
nnoremap <leader>N :cprev<CR>

" Stip ansi
nnoremap <leader>a :%s/\e\[[0-9;]*m//g<CR>

nmap gD :ALEGoToDefinition<CR>
nmap gd :ALEGoToDefinition -tab<CR>
