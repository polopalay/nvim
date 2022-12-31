set background=dark
colorscheme tokyonight-storm
syntax on

let g:closetag_filenames = '*.html,*.js,*.xml'	"Only in html and js file, use closetag plugin
let g:mta_use_matchparen_group = 1	"Enable auto close tag
let g:mta_filetypes = {
         \'html' : 1, 
         \
         \'xhtml' : 1, 
         \'xml' : 1, 
         \'javascriptreact' : 1,
         \'javascript': 1}	"File types enable auto close tag
let g:floaterm_keymap_toggle = '<F12>'	"Map key to toggle terminal

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
"Jump to anywhere in file
map <Leader>w <Plug>(easymotion-bd-w)
"Jump to end or start of tag(html)
map <leader>j :MtaJumpToOtherTag<cr>
" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

