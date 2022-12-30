let mapleader = " " " Map leader to Space

" set vim background transparent
hi! Normal ctermbg=NONE guibg=NONE 

set encoding=utf-8	"Set endcoding in vim is utf-8
set number relativenumber	"Show current line number and distance to other line
set cursorline	"Hightlight cursor
set backspace=2 "Make backspace work like most other programs
set tabstop=2	"Softtabs, 2 spaces
set shiftwidth=2	"Softtabs, 2 spaces
set nojoinspaces	"One space not two
set autoread    "Auto check file change
set autowrite   "Auto write change to file
set hidden	"Some servers have issues with backup files
set nobackup    "Some servers have issues with backup files
set nowritebackup   "Some servers have issues with backup files
set nowrap "Don't wrap lines
set updatetime=300	"Make vim smoother
set noswapfile	"Some extendsion i don't need
set mouse=a "Click cursor

"Move between tab in buffer
map <Leader>t <C-w>w
"Select all file
map <Leader>a ggVG
"Copy current selected
map <Leader>c "+y
"Save current file
map <Leader>s :w<CR>
"No highlight file(after find, file will be highlight)
map <C-h> :nohl<CR>
