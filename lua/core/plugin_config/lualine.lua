require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_c = {
      {
        'line_info',
        separator = '|',
      },
      {
        'mode',
      }
    },
    lualine_r = {
      {
        'filetype',
      }
    }
  }
}
