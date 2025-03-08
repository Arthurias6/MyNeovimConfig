return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader>,", false },
      { "<leader>:", false },
      { "<leader>/", false },
      { "<leader>sh", false },
      { "<leader>sH", false },
      { "<leader>sj", false },
      { "<leader>sl", false },
      { "<leader>sM", false },
      { "<leader>sm", false },
      { "<leader>so", false },
      { "<leader>sR", false },
      { "<leader>sq", false },
      { "<leader>sw", false },
      { "<leader>sW", false },
      { "<leader>fR", false },
      { "<leader>sc", false },
      { "<leader>sC", false },
      { "<leader>sa", false },
      { "<leader>sD", false },
      { "<leader>sG", false },
      { "<leader>sS", false },
      { '<leader>s"', false },
      { "<leader>fF", false },
      { "<leader>fb", false },
      { "<leader>ff", false },
      { "<leader>fc", false },
      { "<leader>fr", false },
      { "<leader>fg", false },
      { "<leader>gs", false },
      { "<leader>sb", false },

      {
        "<leader><leader>",
        function()
          require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = true,
          }))
        end,
        desc = "Buffers List",
      },

      {
        "<leader>sd",
        function()
          require("telescope.builtin").diagnostics(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = true,
          }))
        end,
        desc = "Diagnostics",
      },

      {
        "<leader>sc",
        function()
          require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = false,
          }))
        end,
        desc = "Search Current Buffer",
      },

      {
        "<leader>ss",
        function()
          require("telescope.builtin").lsp_document_symbols(require("telescope.themes").get_dropdown({
            winblend = 10,
            previewer = true,
            symbols = LazyVim.config.get_kind_filter(),
          }))
        end,
        desc = "Search Symbol",
      },

      { "<leader>sf", LazyVim.pick("files"), desc = "Sarch Files" },
      { "<leader>sg", "<cmd>Telescope git_files<cr>", desc = "Search Git Files" },
      { "<leader>sl", LazyVim.pick("live_grep"), desc = "Search Live Grep" },
      { "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc = "Search Recent" },
      { "<leader>sn", LazyVim.pick.config_files(), desc = "Neovim Config Files" },
      { "<leader>uC", LazyVim.pick("colorscheme", { enable_preview = true }), desc = "Colorscheme with Preview" },
      { "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
      { "<leader>gc", "<cmd>Telescope git_commits<CR>", desc = "Git Commits" },
    },
  },
}
