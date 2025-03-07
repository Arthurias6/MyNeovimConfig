-- Customizes statuslines
return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {},
        lualine_x = { { 'filetype', icon_only = true, padding = { right = 0 }, separator = '' }, { 'filename', padding = { left = 0, right = 1 } } },
        lualine_y = {},
        lualine_z = {},
      },
    },
  },
}
