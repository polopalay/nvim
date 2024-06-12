let mapleader = " " " Map leader to Space

set encoding=UTF-8
set number relativenumber	"Show current line number and distance to other line
set cursorline	"Hightlight current line
set nobackup    "Some servers have issues with backup files
set nowritebackup   "Some servers have issues with backup files
set noswapfile  "Don't create swap file
set mouse=a
set autoread
set nowrap

"Move between tab in buffer
nmap <silent><Leader>t <C-w>w
"Select all file
nmap <silent><Leader>a ggVG
"Copy current selected
vmap <silent><Leader>c "+y
"Save current file
map <silent><Leader>s <cmd>silent! w<cr>
"No highlight file(after find, file will be highlight)
nmap <silent><C-h> <cmd>silent! nohl<cr>
" Back to previous file
nmap <silent><BS> <cmd>silent! b#<cr>
map <silent><Leader>/ <plug>NERDCommenterToggle

colorscheme espresso
hi! Normal ctermbg=NONE guibg=NONE 
