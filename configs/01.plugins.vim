call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
Plug 'nvim-lualine/lualine.nvim' "Display info for buffers and file info
Plug 'preservim/nerdcommenter'	"Quick comment
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'Xuyuanp/nerdtree-git-plugin'	"Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	"Change color for tree folder
Plug 'PhilRunninger/nerdtree-buffer-ops' "maps a key w to close (wipeout) the buffer associated 
Plug 'ryanoasis/vim-devicons'	"Show icon to tree folder
Plug 'kyazdani42/nvim-web-devicons'	"Show icon but for more extension
Plug 'neoclide/coc.nvim', {'branch': 'release'}	
Plug 'alvan/vim-closetag'	"Auto close tag for html
Plug 'raimondi/delimitmate'	"Auto close for quotes
Plug 'voldikss/vim-floaterm'	"Terminal inside vim
Plug 'sheerun/vim-polyglot'	"Color skin for language
Plug 'lukas-reineke/indent-blankline.nvim' " Indent line
Plug 'kdheepak/lazygit.nvim' "Open git ui
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
