call plug#begin()
Plug 'morhetz/gruvbox'  " Theme for vim
Plug 'itchyny/lightline.vim'	"Status bar for vim
Plug 'mg979/vim-xtabline'		"List opened file for vim
Plug 'preservim/nerdtree'   " Display folder for tree
Plug 'ryanoasis/vim-devicons'   " Show icon to tree folder
Plug 'Xuyuanp/nerdtree-git-plugin'  " Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Change color for tree folder
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete code for vim, 'python3 -m pip install --user --upgrade pynvim' 'python2 -m pip install --user --upgrade pynvim', 'CocInstall coc-prettier'
Plug 'sheerun/vim-polyglot' " Color skin for language	
Plug 'w0rp/ale' " Error and warning checking for vim, install eslint for checking js
Plug 'omnisharp/omnisharp-vim'  " Checking error for c#
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Find file
Plug 'junegunn/fzf.vim' " Find file for vim
Plug 'airblade/vim-gitgutter'   "	Checking change in file with git state
Plug 'alvan/vim-closetag'   " Auto close tag for html
Plug 'raimondi/delimitmate' " Auto close for quotes
Plug 'preservim/nerdcommenter'  " Quick comment
call plug#end()

set encoding=utf-8
colorscheme gruvbox
set background=dark
syntax on
set number
set relativenumber
set shiftwidth=2
set tabstop=2
set backspace=2 " Make backspace work like most other programs 
set encoding=utf-8
set clipboard=unnamedplus   "Use to copy to clipboard
set autoread    "	Auto check file change
set autowrite   "Auto write change to file
set noswapfile
map <C-a> ggVG
map <C-c> "+y
set nobackup    " Some servers have issues with backup files
set nowritebackup   " Some servers have issues with backup files
set updatetime=750

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
command! -nargs=0 Format :call CocAction('format')
map <C-p> :Format<CR>
let g:ale_linters = { 'cs': ['OmniSharp'] } " In cs file auto use omnisharp for syntax checking
noremap ` :GFiles<CR>
noremap ; :Buffers<CR>
let g:closetag_filenames = '*.html,*.js'    " Only in html and js file, use closetag plugin
map <C-\> <plug>NERDCommenterToggle
