call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
Plug 'preservim/nerdcommenter'	"Quick comment
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	"Change color for tree folder
Plug 'ryanoasis/vim-devicons'	"Show icon to tree folder
Plug 'neoclide/coc.nvim', {'branch': 'release'}	
Plug 'voldikss/vim-floaterm'	"Terminal inside vim
Plug 'sheerun/vim-polyglot'	"Color skin for language
Plug 'nvim-lua/plenary.nvim'  "Libarary for some extendsion (etc: telescope)
Plug 'nvim-telescope/telescope.nvim' "Find file, buffer
call plug#end()
