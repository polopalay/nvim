require("telescope").setup {
  extensions = {
    file_browser = {
      theme = "ivy",
      hijack_netrw = true,
    },
  },
}
require('telescope.builtin').buffers({ sort_lastused = true, ignore_current_buffer = true })
require("telescope").load_extension("file_browser")
