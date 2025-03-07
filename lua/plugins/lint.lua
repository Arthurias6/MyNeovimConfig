-- Linting
return {

  {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function()
      local lint = require 'lint'
      lint.linters_by_ft = {
        bash = { 'shellcheck' },
        css = { 'stylelint' },
        html = { 'htmlint' },
        java = { 'checkstyle' },
        javascript = { 'eslint_d' },
        json = { 'jsonlint' },
        lua = { 'selene' },
        markdown = { 'markdownlint' },
        python = { 'pylint' },
        typescript = { 'eslint_d' },
      }
      local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
          if vim.opt_local.modifiable:get() then
            lint.try_lint()
          end
        end,
      })
    end,
  },
}
