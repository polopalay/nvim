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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
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
set mouse=a "Click cursor

set background=dark
colorscheme gruvbox
syntax on

"Show all files follow git
map ` :GFiles<CR>
"Show all files
map ' :Files<CR>
"Show all buffers
map ; :Buffers<CR>
"Find by content(require brew install ripgrep)
nnoremap Fg <cmd>Telescope live_grep<cr>
"Toggle comment
map <Leader>/ <plug>NERDCommenterToggle
"Format code
map <leader>f :Format <CR> 
"Show recomend fix to current file
map <leader>F <Plug>(coc-codeaction)
"Quick fix to current file
map <leader>qf <Plug>(coc-fix-current)
"Jump to definition of value or function
map gd :call CocActionAsync('jumpDefinition')<CR>
"Show document of function or value
nnoremap <silent> K :call <SID>show_documentation()<CR>
"Rename of value
map <leader>n <Plug>(coc-rename)
"Jump to anywhere in file
map <Leader>w <Plug>(easymotion-bd-w)
"Move between tab in buffer
map <Leader>t <C-w>w
"Select all file
map <Leader>a ggVG
"Copy current selected
map <Leader>c "+y
"Save current file
map <Leader>s :w<CR>
"Show outline of current file(list function, var,...) press enter to quick jump
map <Leader>o :CocList outline<CR>
"Toggle nerd tree
map <C-n> :NERDTreeToggle<CR>
"Find file in nerd tree
map <C-f> :NERDTreeFind<CR>
"No highlight file(after find, file will be highlight)
map <C-h> :nohl<CR>
"Jump to end or start of tag(html)
map <leader>j :MtaJumpToOtherTag<cr>
"Show suggestion of coc
inoremap <silent><expr> <c-space> coc#refresh()

let g:airline#extensions#tabline#enabled = 1  "Show current buffers
let g:airline#extensions#tabline#formatter = 'unique_tail'  "Setting for current buffers
let NERDTreeShowLineNumbers=1	"Show line number for nerdtree
let NERDTreeIgnore=['node_modules', 'build', 'bin', 'obj', 'package-lock.json', 'yarn.lock']	" Don't show some folder in tree folder
let g:NERDTreeWinSize=45    "Set width of tree
let g:closetag_filenames = '*.html,*.js,*.xml'	"Only in html and js file, use closetag plugin
"Plugin for cocnvim, 'dotnet tool install --global csharp-ls' for use omnisharp 
let g:coc_global_extensions=['coc-tsserver', 'coc-eslint', 'coc-explorer', 'coc-css', 'coc-html', 'coc-json', 'coc-vimlsp', 'coc-omnisharp']
let g:mta_use_matchparen_group = 1	"Enable auto close tag
let g:mta_filetypes = {'html' : 1, 'xhtml' : 1, 'xml' : 1, 'javascriptreact' : 1, 'javascript': 1}	"File types enable auto close tag
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_kill   = '<F10>'
let g:floaterm_keymap_toggle = '<F12>'	"Map key to toggle terminal
"let g:floaterm_keymap_toggle = '<F12>'

command! -nargs=0 Format :call CocActionAsync('format') "Set command :Format to format current buffer

autocmd VimEnter * NERDTree "Auto open nerdtree
autocmd VimEnter * wincmd p "Auto switch to document after auto open nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  "Auto exit nerdtree
autocmd FileType scss setl iskeyword+=@-@	"Enable css color in scss and sass
autocmd CursorHold * silent call CocActionAsync('highlight')

hi! Normal ctermbg=NONE guibg=NONE

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
