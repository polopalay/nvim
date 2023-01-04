require('lualine').setup {
  options = {
    theme = 'auto',
    component_separators = '',
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
    globalstatus = true,
    --padding = 1,
  },
  sections = {
    lualine_z = {
      {
        'buffers',
        show_filename_only = true,
        show_modified_status = true,
        symbols = {
          modified = ' ●',
          alternate_file = '#',
          directory = '',
        },
      },
    },
    lualine_y = { { 'branch', icon = '', }, },
    lualine_x = { 'diff' },
    lualine_c = { 'searchcount' },
    lualine_b = { { 'diagnostics', always_visible = true, }, },
    lualine_a = { 'filename', 'filesize', },
  },
  extensions = { 'fzf', 'nerdtree' },
}
