"Format code
map <leader>f :Format <CR>
"Show recomend fix to current file
map <leader>F <Plug>(coc-codeaction)
"Quick fix to current file
map <leader>qf <Plug>(coc-fix-current)
"Jump to definition of value or function
map gd :call CocActionAsync('jumpDefinition')<CR>
"Show document of function or value
nnoremap <silent> K :call <SID>show_documentation()<CR>
"Rename of value
map <leader>n <Plug>(coc-rename)
"Show suggestion of coc
inoremap <silent><expr> <c-space> coc#refresh()
" Press enter to auto comple
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"Show outline of current file(list function, var,...) press enter to quick jump
map <Leader>o :CocList outline<CR>

let g:coc_global_extensions=[
         \'coc-tsserver', 
         \'coc-eslint',
         \'coc-explorer', 
         \'coc-css', 
         \'coc-html', 
         \'coc-json', 
         \'coc-vimlsp', 
         \'coc-omnisharp', 
         \'coc-go']
"Function to show document in cocnvim
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"Set command :Format to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

autocmd CursorHold * silent call CocActionAsync('highlight')

