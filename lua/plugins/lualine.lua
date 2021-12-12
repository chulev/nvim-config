local codedark = require'lualine.themes.codedark'

require('lualine').setup({
  options = {
    theme = codedark,
    section_separators = '',
    component_separators = '',
  },
  sections = {
    lualine_a = {'branch'},
    lualine_b = {
      {
        'filename',
        path = 1,
      }
    },
    lualine_c = {},
    lualine_x = {'diagnostics', 'diff'},
  },
})
