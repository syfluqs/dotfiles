set mouse=a
syntax on
set number
set history=500
set ruler
set hlsearch
set backup
set ai
set si
set wrap
set noshowmode
set showtabline=2

nmap <F4> "zxP

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2
set t_Co=256
