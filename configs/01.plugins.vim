call plug#begin()
Plug 'folke/tokyonight.nvim', { 'branch': 'main' } " Theme
Plug 'nvim-lualine/lualine.nvim' "Display info for buffers and file info
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'ryanoasis/vim-devicons'	"Show icon to tree folder
Plug 'kyazdani42/nvim-web-devicons'	"Show icon but for more extension
Plug 'Xuyuanp/nerdtree-git-plugin'	"Git status for tree folder
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	"Change color for tree folder
Plug 'neoclide/coc.nvim', {'branch': 'release'}	
Plug 'nvim-lua/plenary.nvim' "Need for telescope
Plug 'alvan/vim-closetag'	"Auto close tag for html
Plug 'raimondi/delimitmate'	"Auto close for quotes
Plug 'preservim/nerdcommenter'	"Quick comment
Plug 'voldikss/vim-floaterm'	"Terminal inside vim
Plug 'sheerun/vim-polyglot'	"Color skin for language
Plug 'lukas-reineke/indent-blankline.nvim' " Indent line
Plug 'mfussenegger/nvim-dap' "Debug
Plug 'kdheepak/lazygit.nvim'
call plug#end()

lua require('plugins')
lua require('telescope-config')
lua require('line')
lua require('notice')
