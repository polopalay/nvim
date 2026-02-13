"Format code
map <silent><leader>f <cmd>silent! Format <cr>
"Show recomend fix to current file
map <silent><leader>F <Plug>(coc-codeaction)
"Quick fix to current file
map <silent><leader>qf <Plug>(coc-fix-current)
"Jump to definition of value or function
map gd <cmd>silent! call CocActionAsync('jumpDefinition')<CR>
"Rename of value
map <silent><leader>r <Plug>(coc-rename)
"Show suggestion of coc
inoremap <silent><expr> <c-space> coc#refresh()
" Press enter to auto comple
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

let g:coc_global_extensions=[
        \'coc-tsserver', 
        \'coc-eslint',
        \'coc-explorer', 
        \'coc-html', 
        \'coc-css', 
        \'coc-json', 
        \'coc-xml',
		\'coc-pyright',
		\'coc-rust-analyzer',
	\]

command! -nargs=0 Format silent call CocActionAsync('format')
