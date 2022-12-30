call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
Plug 'nvim-lualine/lualine.nvim' "Display info for buffers and file info
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'ryanoasis/vim-devicons'	"Show icon to tree folder
Plug 'kyazdani42/nvim-web-devicons'	"Show icon
Plug 'Xuyuanp/nerdtree-git-plugin'	"Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	"Change color for tree folder
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"Auto complete code for vim, 'python3 -m pip install --user --upgrade pynvim' 'python2 -m pip install --user --upgrade pynvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }	"Find file
Plug 'junegunn/fzf.vim'	"Find file for vim
Plug 'nvim-lua/plenary.nvim' "Need for telescope
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
Plug 'lukas-reineke/indent-blankline.nvim' " Indent line
Plug 'mfussenegger/nvim-dap'
call plug#end()

lua require('plugins')
