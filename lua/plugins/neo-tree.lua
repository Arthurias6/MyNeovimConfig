-- Neo-tree is a Neovim plugin to browse the file system
return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { 'q', ':Neotree reveal<CR>', desc = 'Reveal Tree', silent = true },
    },
    opts = {
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
}
