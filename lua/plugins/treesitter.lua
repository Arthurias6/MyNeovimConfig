-- Highlight, edit, and navigate code
return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs',
    opts = {
      ensure_installed = {
        'astro',
        'bash',
        'css',
        'html',
        'java',
        'javascript',
        'json',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'python',
        'typescript',
        'tsx',
        'vim',
        'vimdoc',
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    },
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {},
  },
}
