return {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
    },
    keys = {
        {
            "<leader>ft",
            "<cmd>TodoFzfLua<CR>",
            desc = "Find TODO comments",
        },
    },
}
