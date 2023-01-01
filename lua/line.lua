local function time()
  local date_table = os.date("*t")
  local hour, minute, second = date_table.hour, date_table.min, date_table.sec
  local result = string.format("%02d:%02d:%02d", hour, minute, second)
  return result
end

require('lualine').setup {
  options = {
    theme = 'tokyonight',
    component_separators = '',
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_z = {
      {
        time,
      },
    },
    lualine_y = {
      {
        'branch',
        icon = '',
      },
    },
    lualine_x = {
      {
        'diff',
      },
    },
    lualine_c = { 'searchcount' },
    lualine_b = {
      {
        'diagnostics',
        always_visible = true,
      },
    },
    lualine_a = {
      {
        'filename',
      },
      {
        'filetype',
        colored = false,
        icon_only = true,
      },
      'filesize',
    },
  },
  extensions = { 'fzf','nerdtree' },
}
