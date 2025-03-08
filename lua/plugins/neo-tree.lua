return {

  -- Neo-tree is a Neovim plugin to browse the file system
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>d", ":Neotree reveal<CR>", desc = "Reveal Tree", silent = true },
      { "<leader>E", false },
      { "<leader>e", false },
      { "<leader>fe", false },
      { "<leader>fE", false },
    },
    opts = {
      sources = { "filesystem" },
      close_if_last_window = true,
      filesystem = {
        window = {
          width = 30,
          mappings = {
            ["P"] = { "toggle_preview", config = { use_float = true, title = "Preview" } },
          },
        },
      },
    },
  },
}
