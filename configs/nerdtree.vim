"Toggle nerd tree
map <C-n> :silent! NERDTreeToggle<CR>
"Find file in nerd tree
map <C-f> :NERDTreeFind<CR>

let NERDTreeShowLineNumbers=1	"Show line number for nerdtree
let NERDTreeIgnore=['node_modules', 'build', 'bin', 'obj', 'package-lock.json', 'yarn.lock', '.DS_Store']	" Don't show some folder in tree folder
let g:NERDTreeWinSize=36    "Set width of tree
let NERDTreeShowHidden=1

autocmd VimEnter * silent! NERDTree "Auto open nerdtree
autocmd VimEnter * wincmd p "Auto switch to document after auto open nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "Auto exit nerdtree
