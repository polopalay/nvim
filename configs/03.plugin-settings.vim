set background=dark
colorscheme tokyonight-storm
syntax on

let g:closetag_filenames = '*.html,*.js,*.xml'	"Only in html and js file, use closetag plugin
let g:mta_use_matchparen_group = 1	"Enable auto close tag
let g:mta_filetypes = {
         \'html' : 1, 
         \'xhtml' : 1, 
         \'xml' : 1, 
         \'javascriptreact' : 1,
         \'javascript': 1}	"File types enable auto close tag
let g:floaterm_keymap_toggle = '<F12>'	"Map key to toggle terminal

map <silent><Leader>/ <plug>NERDCommenterToggle

