call plug#begin()
Plug 'morhetz/gruvbox'	"Theme for vim
Plug 'vim-airline/vim-airline' "Display info for buffers and file info
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'ryanoasis/vim-devicons'	"Show icon to tree folder
Plug 'Xuyuanp/nerdtree-git-plugin'	"Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	"Change color for tree folder
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"Auto complete code for vim, 'python3 -m pip install --user --upgrade pynvim' 'python2 -m pip install --user --upgrade pynvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	"Find file
Plug 'junegunn/fzf.vim'	"Find file for vim
Plug 'airblade/vim-gitgutter'	"Checking change in file with git state
Plug 'alvan/vim-closetag'	"Auto close tag for html
Plug 'andrewradev/tagalong.vim'	"Auto rename tag
Plug 'raimondi/delimitmate'	"Auto close for quotes
Plug 'preservim/nerdcommenter'	"Quick comment
Plug 'easymotion/vim-easymotion'	"Quick jump to location in file
Plug 'valloric/matchtagalways'	"Jump to end of tag, and highlight tag html
Plug 'voldikss/vim-floaterm'	"Terminal inside vim
Plug 'sheerun/vim-polyglot'	"Color skin for language
call plug#end()

let mapleader = " "	"Map space to leader key
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

set background=dark
colorscheme gruvbox
syntax on

map ` :GFiles<CR>
map ' :Files<CR>
map ; :Buffers<CR>
map <Leader>/ <plug>NERDCommenterToggle
map <Leader>f :call CocAction("format")<CR> 
map gd :call CocActionAsync('jumpDefinition')<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>n <Plug>(coc-rename)
map <Leader>w <Plug>(easymotion-bd-w)
map <Leader>t <C-w>w
map <Leader>a ggVG
map <Leader>c "+y
map <Leader>s :w<CR>
map <Leader>q :qa<CR>
map <Leader>o :CocList outline<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>
map <C-h> :nohl<CR>
map <leader>j :MtaJumpToOtherTag<cr>
inoremap <silent><expr> <c-space> coc#refresh()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let NERDTreeShowLineNumbers=1	"Show line number for nerdtree
let NERDTreeIgnore=['node_modules', 'build', 'bin', 'obj', 'package-lock.json', 'yarn.lock']	" Don't show some folder in tree folder
let g:NERDTreeWinSize=45    "Set width of tree
let g:closetag_filenames = '*.html,*.js,*.xml'	"Only in html and js file, use closetag plugin
let g:coc_global_extensions=['coc-tsserver', 'coc-explorer', 'coc-json', 'coc-css', 'coc-html', 'coc-clangd', 'coc-go', 'coc-vimlsp', 'coc-jedi', 'coc-vetur', 'coc-go', 'coc-omnisharp']	"Add syntax for vim
let g:mta_use_matchparen_group = 1	"Enable auto close tag
let g:mta_filetypes = {'html' : 1, 'xhtml' : 1, 'xml' : 1, 'javascriptreact' : 1, 'javascript': 1}	"File types enable auto close tag
let g:floaterm_keymap_toggle = '<F12>'	"Map key to toggle terminal

autocmd VimEnter * NERDTree "Auto open nerdtree
autocmd VimEnter * wincmd p "Auto switch to document after auto open nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "Auto exit nerdtree
autocmd FileType scss setl iskeyword+=@-@	"Enable css color in scss and sass

hi! Normal ctermbg=NONE guibg=NONE

"Some support function
"Function to show document in cocnvim
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
