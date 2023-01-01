"Format code
map <silent><leader>f <cmd>silent! Format <cr>
"Show recomend fix to current file
map <silent><leader>F <Plug>(coc-codeaction)
"Quick fix to current file
map <silent><leader>qf <Plug>(coc-fix-current)
"Jump to definition of value or function
map gd <cmd>silent! call CocActionAsync('jumpDefinition')<CR>
"Show document of function or value
nnoremap <silent>K :call <SID>show_documentation()<CR>
"Rename of value
map <silent><leader>n <Plug>(coc-rename)
"Show suggestion of coc
inoremap <silent><expr> <c-space> coc#refresh()
" Press enter to auto comple
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"Show outline of current file(list function, var,...) press enter to quick jump
map <silent><Leader>o :silent! CocList outline<CR>

"Plugin for cocnvim, 'dotnet tool install --global csharp-ls' for use omnisharp
let g:coc_global_extensions=[
         \'coc-tsserver', 
         \'coc-eslint',
         \'coc-explorer', 
         \'coc-css', 
         \'coc-html', 
         \'coc-json', 
         \'coc-omnisharp', 
         \'coc-go',
         \'coc-sumneko-lua']

"coc-css for scss file
autocmd FileType scss setl iskeyword+=@-@
"Set command :Format to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

autocmd CursorHold * silent call CocActionAsync('highlight')

