local function vimIcon()
  return [[勇]]
end

local function currentTime()
  local date_table = os.date("*t")
  local hour, minute, second = date_table.hour, date_table.min, date_table.sec
  local result = string.format("%d:%d:%d", hour, minute, second)

  return result
end

require('lualine').setup {
  options = {
    theme = 'tokyonight',
    component_separators = '',
    section_separators = { left = '', right = '' },
    always_divide_middle = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {
      {
        vimIcon,
        separator = {
          left = ''
        },
        right_padding = 2,
      },
    },
    lualine_b = {
      {
        'branch',
        icon = '',
        left_padding = 2,
        separator = {
          right = ''
        },
      },
    },
    lualine_c = { 'filesize' },
    lualine_x = { 'searchcount' },
    lualine_y = {
      {
        --'mode',
        'buffers',
        show_filename_only = true,
        hide_filename_extension = false,
        show_modified_status = true,
        separator = {
          left = ''
        },
        symbols = {
          modified = ' ●',
          alternate_file = '',
          directory = '',
        },
      },
    },
    lualine_z = {
      { 'location',
        separator = {
          right = ''
        },
        left_padding = 2,
      },
    },
  },
  --inactive_sections = {},
  --tabline = {
  --lualine_a = {},
  --lualine_b = {},
  --lualine_c = {},
  --lualine_x = {},
  --lualine_y = {},
  --lualine_z = {},
  --},
  extensions = { 'fzf' },
}
