map <silent><C-f> <cmd>silent! NERDTreeFind<CR>

let g:NERDTreeWinSize=45
"let NERDTreeShowHidden=1
let NERDTreeIgnore=['.DS_Store', '__pycache__']

autocmd VimEnter * silent! NERDTree "Auto open nerdtree
autocmd VimEnter * wincmd p "Auto switch to document after auto open nerdtree
