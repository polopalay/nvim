"Format code
map <silent><leader>f <cmd>silent! Format <cr>
"Show recomend fix to current file
map <silent><leader>F <Plug>(coc-codeaction)
"Quick fix to current file
map <silent><leader>qf <Plug>(coc-fix-current)
"Jump to definition of value or function
map gd <cmd>silent! call CocActionAsync('jumpDefinition')<CR>
"Rename of value
map <silent><leader>n <Plug>(coc-rename)
"Show suggestion of coc
inoremap <silent><expr> <c-space> coc#refresh()
" Press enter to auto comple
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

let g:coc_global_extensions=[
         \'coc-tsserver', 
         \'coc-eslint',
         \'coc-explorer', 
         \'coc-html', 
         \'coc-json', 
         \'coc-omnisharp', 
         \'coc-go',
         \'coc-java',
         \'coc-xml',
         \'coc-sql',
         \'@yaegassy/coc-intelephense',
	 \'coc-jedi' ]

command! -nargs=0 Format :call CocActionAsync('format')
