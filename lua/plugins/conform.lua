return {
    'stevearc/conform.nvim',
    opts = {},
    config = function()
        local conform = require('conform')

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "black" },
                javascript = { "prettier" },
                typescript = { "prettier" },
                kotlin = { "ktlint" },
                cpp = { "clang-format" },
                java = { "google-java-format" },
            },
        })

        vim.keymap.set({ "n", "v" }, "<leader>l", function()
            conform.format({
                lsp_fallback = true,
                async = true,
                timeout_ms = 1000,
            })
        end, { noremap = true, silent = true, desc = "Format file or selection (in visual mode)" })
    end,
}
