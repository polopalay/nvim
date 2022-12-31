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
map <silent>` <cmd>GFiles<cr>
"Show all files
map <silent>' <cmd>Files<cr>
"Show all buffers
map <silent>; <cmd>Buffers<cr>
"Find by content(require brew install ripgrep)
nnoremap <silent>Fg <cmd>Telescope live_grep<cr>
"Toggle comment
map <silent><Leader>/ <plug>NERDCommenterToggle
"Jump to anywhere in file
map <silent><Leader>w <plug>(easymotion-bd-w)
"Jump to end or start of tag(html)
map <silent><leader>j <cmd>MtaJumpToOtherTag<cr>
" setup mapping to call :LazyGit
nnoremap <silent><leader>gg :silent! LazyGit<CR>

