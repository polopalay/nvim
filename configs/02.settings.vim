let mapleader = " " " Map leader to Space

set encoding=UTF-8 "The encoding displayed.
set number relativenumber "Show current line number and distance to other line
set cursorline "Hightlight current line
set nobackup "Some servers have issues with backup files
set nowritebackup "Some servers have issues with backup files
set noswapfile "Don't create swap file
set mouse=a "Enable mouse
set autoread "Auto read file when file change
set fileformats=unix,dos

set tabstop=4
set shiftwidth=4

nmap <silent><Leader>t <C-w>w
nmap <silent><Leader>a ggVG
vmap <silent><Leader>c "+y
nmap <silent><Leader>s <cmd>silent! w<cr>
nmap <silent><C-h> <cmd>silent! nohl<cr>
nmap <silent><BS> <cmd>silent! b#<cr>
"nmap <silent><Tab> :bprevious<CR>
nmap <silent><Leader>/ <plug>NERDCommenterToggle

colorscheme catppuccin_latte
hi! Normal ctermbg=NONE guibg=NONE 
