map <silent><C-f> <cmd>silent! NERDTreeFind<CR>
map <silent><C-t> :NERDTreeToggle<CR>

let g:NERDTreeWinSize=40
let NERDTreeShowHidden=1
let NERDTreeIgnore=['.DS_Store', '__pycache__', 'bin', 'obj', '.git', '.localized']

autocmd VimEnter * silent! NERDTree "Auto open nerdtree
autocmd VimEnter * wincmd p "Auto switch to document after auto open nerdtree
" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if winnr() == winnr('h') && bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
