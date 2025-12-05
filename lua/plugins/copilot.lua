return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    enabled = false,
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
        suggestion = { enabled = false },
        panel = { enabled = false },
    },
}
