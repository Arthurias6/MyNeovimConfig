return {
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      views = {
        cmdline_popup = {
          border = {
            style = 'none',
            padding = { 1, 2 },
          },
          filter_options = {},
          win_options = {
            winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder',
          },
        },
        popupmenu = {
          relative = 'editor',
          position = {
            row = '75%',
            col = '50%',
          },
          size = {
            width = 60,
            height = 10,
          },
          border = {
            style = 'none',
            padding = { 1, 2 },
          },
          win_options = {
            winhighlight = 'NormalFloat:NormalFloat,FloatBorder:FloatBorder',
          },
        },
      },
      dependencies = {
        'MunifTanjim/nui.nvim',
        'rcarriga/nvim-notify',
      },
    },
  },
}
