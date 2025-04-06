return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            -- python = { "isort", "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            -- rust = { "rustfmt" },
            -- Conform will run the first available formatter
            javascript = { "biome", "prettierd", "prettier", stop_after_first = true },
            typescript = { "biome", "prettierd", "prettier", stop_after_first = true },
            nix = { "alejandra", stop_after_first = true },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
