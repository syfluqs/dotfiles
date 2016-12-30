set gfn=Monaco\ 9
set lines=30
set columns=80
colo hemisu
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
"set guioptions-=r
"set guioptions-=l
set guioptions+=LlRrb
set guioptions-=LlRrb
nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-v> "+gP
vnoremap <C-v> "+gP
set clipboard=unnamed
