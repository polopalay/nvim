call plug#begin()
Plug 'gmoe/vim-espresso'
Plug 'preservim/nerdcommenter'	"Quick comment
Plug 'preservim/nerdtree'	"Display folder for tree
Plug 'neoclide/coc.nvim', {'branch': 'release'}		"Auto complete
Plug 'nvim-lua/plenary.nvim'  "Libarary for some extendsion (etc: telescope)
Plug 'nvim-telescope/telescope.nvim' "Find file, buffer
Plug 'github/copilot.vim' "Auto complete
"Plug 'zbirenbaum/copilot.lua'
Plug 'CopilotC-Nvim/CopilotChat.nvim', { 'branch': 'canary' }
call plug#end()

lua << EOF
require("CopilotChat").setup {}
EOF
