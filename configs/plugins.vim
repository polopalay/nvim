call plug#begin()
Plug 'morhetz/gruvbox'  " Theme for vim
Plug 'itchyny/lightline.vim'
Plug 'mg979/vim-xtabline'
Plug 'preservim/nerdtree'   " Display folder for tree
Plug 'ryanoasis/vim-devicons'   " Show icon to tree folder
Plug 'Xuyuanp/nerdtree-git-plugin'  " Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'  " Change color for tree folder
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'branch': 'release/1.x' } " Format code for vim
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Auto complete code for vim, if error enter 'python3 -m pip install --user --upgrade pynvim' and 'python2 -m pip install --user --upgrade pynvim'
Plug 'honza/vim-snippets'   " Snippets for some language
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
