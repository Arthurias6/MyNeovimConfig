-- To run code
return {
    {
        "CRAG666/code_runner.nvim",
        config = function()
            require('code_runner').setup({
                filetype = {
                    java = {
                        "cd $dir &&",
                        "javac $fileName &&",
                        "java $fileNameWithoutExt"
                    },
                    python = "python -u",
                    -- typescript = "deno run",
                },
            })

            vim.keymap.set('n', '<leader>rc', ':RunCode<CR>', { desc = "[R]un [C]ode", noremap = true, silent = false })
        end
    },
}
