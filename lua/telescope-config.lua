require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
    },
  },
}
local builtin = require('telescope.builtin')
builtin.buffers({ sort_lastused = true, ignore_current_buffer = true, })
vim.keymap.set('n', '\'', builtin.find_files, {})
vim.keymap.set('n', ';', builtin.buffers, {})
vim.keymap.set('n', '"', builtin.live_grep, {})
require("telescope").load_extension("file_browser")
