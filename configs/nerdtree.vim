"Toggle nerd tree
map <silent><C-n> <cmd>silent! NERDTreeToggle<CR>
"Find file in nerd tree
map <silent><C-f> <cmd>silent! NERDTreeFind<CR>

let NERDTreeShowLineNumbers=1	"Show line number for nerdtree
let g:NERDTreeWinSize=45    "Set width of tree
let NERDTreeShowHidden=1

autocmd VimEnter * silent! NERDTree "Auto open nerdtree
autocmd VimEnter * wincmd p "Auto switch to document after auto open nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "Auto exit nerdtree
