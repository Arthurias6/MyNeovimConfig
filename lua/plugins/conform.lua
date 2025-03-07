-- Autoformatter
return {
  {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
      {
        '<leader>f',
        function()
          require('conform').format { async = true, lsp_format = 'fallback' }
        end,
        mode = '',
        desc = '[F]ormat buffer',
      },
    },
    opts = {
      notify_on_error = false,
      format_on_save = function(bufnr)
        local disable_filetypes = { c = true, cpp = true }
        local lsp_format_opt
        if disable_filetypes[vim.bo[bufnr].filetype] then
          lsp_format_opt = 'never'
        else
          lsp_format_opt = 'fallback'
        end
        return {
          timeout_ms = 500,
          lsp_format = lsp_format_opt,
        }
      end,
      formatters_by_ft = {
        ['*'] = { 'codespell', 'trim_whitespace' },
        astro = { 'prettier' },
        bash = { 'beautysh' },
        css = { 'prettier' },
        cucumber = { 'reformat-gherkin' },
        html = { 'prettier' },
        java = { 'google-java-format' },
        javascript = { 'prettier' },
        javascriptreact = { 'prettier' },
        json = { 'prettier' },
        lua = { 'stylua' },
        luadoc = { 'stylua' },
        markdown = { 'prettier' },
        python = { 'black' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
      },
    },
  },
}
