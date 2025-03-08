return {
  -- Disable snacks explorer from LazyVim
  {
    "folke/snacks.nvim",
    opts = {
      explorer = { enabled = false },
    },
    keys = {
      { "<leader>S", false },
      { "<leader>:", false },
      { "<leader>.", false },
      { "<leader>dps", false },
    },
  },
}
