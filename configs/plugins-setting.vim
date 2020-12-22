let g:lightline = {'colorscheme': 'gruvbox'}
let g:xtabline_settings = {'tabline_modes':['buffers', 'tabs', 'arglist']}
let NERDTreeShowLineNumbers=1   " Show line number for vim
let NERDTreeIgnore=['node_modules', 'bin', 'obj']   " Don't show some folder in tree folder
let g:NERDTreeWinSize=40    " Set width of tree
map <C-n> :NERDTreeToggle<CR>
nnoremap F :NERDTreeFind<CR>
autocmd VimEnter * NERDTree "	Auto open nerdtree
autocmd VimEnter * wincmd p "	Auto switch to document after auto open nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "Auto exit nerdtree
nnoremap <C-o> :CocList outline<CR>
map <C-p> :Prettier<CR>
let g:prettier#config#print_width = 1000    "	Set how many word in a line when format
let g:prettier#config#tab_width = 2 "	Set Tab width when format
let g:ale_linters = { 'cs': ['OmniSharp'] } " In cs file auto use omnisharp for syntax checking
noremap ` :GFiles<CR>
noremap ; :Buffers<CR>
let g:closetag_filenames = '*.html,*.js'    " Only in html and js file, use closetag plugin
map <C-\> <plug>NERDCommenterToggle
