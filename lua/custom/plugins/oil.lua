return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    keys = {
      {
        '<leader>o',
        function()
          require('oil').open()
        end,
        desc = 'Open Oil',
        mode = 'n',
      },
    },
  },
}
