call plug#begin()
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'preservim/nerdcommenter'	"Quick comment
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'neoclide/coc.nvim', {'branch': 'release'}		"Auto complete
Plug 'nvim-lua/plenary.nvim'  "Libarary for some extendsion (etc: telescope)
Plug 'nvim-telescope/telescope.nvim' "Find file, buffer
Plug 'github/copilot.vim' "AI suggest code
call plug#end()

