return {
    'rishabhjain9191/telescope-monorepos',
    dependencies = {
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require 'telescope'.load_extension('monorepos')
    end,
}
