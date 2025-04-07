return {
    "coffebar/neovim-project",
    opts = {
        projects = { -- define project roots
            "~/devel/*/*/*",
            "~/.config/nvim",
        },
        picker = {
            type = "telescope", -- or "fzf-lua"
            --type = "fzf-lua",
            preview = {
                enabled = false, -- show directory structure in Telescope preview
                git_status = true, -- show branch name, an ahead/behind counter, and the git status of each file/folder
                show_hidden = true, -- show hidden files/folders
            },
        },
    },
    init = function()
        -- enable saving the state of plugins in the session
        vim.opt.sessionoptions:append("globals") -- save global variables that start with an uppercase letter and contain at least one lowercase letter.
    end,
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        -- optional picker
        { "nvim-telescope/telescope.nvim", tag = "0.1.8" },
        -- optional picker
        --{ "ibhagwan/fzf-lua" },
        { "Shatur/neovim-session-manager" },
    },
    lazy = false,
    priority = 100,
    keys = {
        {
            "<leader>fp",
            "<cmd>NeovimProjectHistory<CR>",
            desc = "Find Recent Projects",
        },
    },
}
