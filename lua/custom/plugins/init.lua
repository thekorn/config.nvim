-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    {
        'navarasu/onedark.nvim',
        priority = 1000,
        init = function()
            vim.cmd.colorscheme 'onedark'
            vim.cmd.hi 'Comment gui=none'
        end,
    },
}
