let mapleader = " " " Map leader to Space
" set vim background transparent
hi! Normal ctermbg=NONE guibg=NONE 

"set encoding=utf-8	"Set endcoding in vim is utf-8
set number relativenumber	"Show current line number and distance to other line
set cursorline	"Hightlight current line
set hidden	"Some servers have issues with backup files
set nobackup    "Some servers have issues with backup files
set nowritebackup   "Some servers have issues with backup files
set noswapfile	"Some extendsion i don't need
set mouse=a "Click cursor
set autoread

"Move between tab in buffer
nmap <silent><Leader>t <C-w>w
"Select all file
nmap <silent><Leader>a ggVG
"Copy current selected
vmap <silent><Leader>c "+y
"Save current file
map <silent><Leader>s <cmd>silent! w<cr>
"Quit vim
map <silent>q <cmd>qa<cr>
"No highlight file(after find, file will be highlight)
nmap <silent><C-h> <cmd>silent! nohl<cr>
" Back to previous file
nmap <silent><BS> <cmd>silent! b#<cr>
