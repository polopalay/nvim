let mapleader = " "
syntax on
set encoding=utf-8
set background=dark
set number
set relativenumber
set backspace=2 " Make backspace work like most other programs 
set encoding=utf-8
set autoread    "	Auto check file change
set autowrite   "Auto write change to file
set noswapfile
set nobackup    " Some servers have issues with backup files
set nowritebackup   " Some servers have issues with backup files
set updatetime=300
set nowrap " don't wrap lines

call plug#begin()
Plug 'morhetz/gruvbox'  " Theme for vim
Plug 'itchyny/lightline.vim'	"Status bar for vim
Plug 'mg979/vim-xtabline'		"List opened file for vim
Plug 'preservim/nerdtree'   " Display folder for tree
Plug 'ryanoasis/vim-devicons'   " Show icon to tree folder
Plug 'Xuyuanp/nerdtree-git-plugin'  " Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Change color for tree folder
Plug 'sheerun/vim-polyglot' " Color skin for language	
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete code for vim, 'python3 -m pip install --user --upgrade pynvim' 'python2 -m pip install --user --upgrade pynvim', 'CocInstall coc-prettier'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Find file
Plug 'junegunn/fzf.vim' " Find file for vim
Plug 'airblade/vim-gitgutter'   "	Checking change in file with git state
Plug 'alvan/vim-closetag'   " Auto close tag for html
Plug 'andrewradev/tagalong.vim'	 "	Auto rename tag
Plug 'raimondi/delimitmate' " Auto close for quotes
Plug 'preservim/nerdcommenter'  " Quick comment
Plug 'easymotion/vim-easymotion'	" Quick jump to location in file
Plug 'tpope/vim-surround'	 "Quick change, delete, add surround
Plug 'tpope/vim-fugitive'	"Git extension
Plug 'valloric/matchtagalways'  "	Jump to end of tag, and highlight tag html
call plug#end()

map ` :GFiles<CR>
map ; :Buffers<CR>
map <Leader>/ <plug>NERDCommenterToggle
map <Leader>f :call CocAction("format")<CR> 
map <Leader>w <Plug>(easymotion-bd-w)
map <Leader>t <C-w>w
map <Leader>a ggVG
map <Leader>c "+y
map <Leader>s :w<CR>
map <Leader>q :qa<CR>
map <Leader>o :CocList outline<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
map <leader>j :MtaJumpToOtherTag<cr>

colorscheme gruvbox
let g:lightline = {'colorscheme': 'gruvbox'}
let g:xtabline_settings = {'tabline_modes':['buffers', 'tabs', 'arglist']}
let NERDTreeShowLineNumbers=1   " Show line number for vim
let NERDTreeShowHidden=1
let NERDTreeIgnore=['node_modules', 'build', 'bin', 'obj', '.git', '.vs', '.vscode', '.config', '.env', '.env.production', 'package-lock.json', 'yarn.lock', '.DS_Store']   " Don't show some folder in tree folder
let g:NERDTreeWinSize=45    " Set width of tree
let g:closetag_filenames = '*.html,*.js,*.jsx,*.xml'    " Only in html and js file, use closetag plugin
let g:coc_global_extensions=['coc-tsserver', 'coc-json', 'coc-omnisharp', 'coc-css', 'coc-html', 'coc-xml']
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {'html' : 1, 'xhtml' : 1, 'xml' : 1, 'javascriptreact' : 1}
autocmd VimEnter * NERDTree "	Auto open nerdtree
autocmd VimEnter * wincmd p "	Auto switch to document after auto open nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "Auto exit nerdtree
