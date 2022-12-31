lua require('config-dap')

nnoremap <silent><F5> <cmd>lua require'dap'.continue()<cr>
nnoremap <silent><F10> <cmd>lua require'dap'.step_over()<cr>
nnoremap <silent><F11> <cmd>lua require'dap'.step_into()<cr>
nnoremap <silent><F12> <cmd>lua require'dap'.step_out()<cr>
nnoremap <silent><Leader>b <cmd>lua require'dap'.toggle_breakpoint()<cr>
