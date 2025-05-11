return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    require('toggleterm').setup {
      size = 15,
      open_mapping = nil, -- We'll define custom key mappings below
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = 'horizontal',
      close_on_exit = true,
      shell = vim.o.shell,
    }

    local Terminal = require('toggleterm.terminal').Terminal

    -- Horizontal terminal (opens from the bottom)
    local horizontal_term = Terminal:new {
      direction = 'horizontal',
    }

    -- Floating terminal
    local float_term = Terminal:new {
      direction = 'float',
    }

    -- Key mappings
    vim.keymap.set('n', '<leader>t', function()
      horizontal_term:toggle()
    end, { desc = 'Toggle horizontal terminal' })

    vim.keymap.set('n', '<leader>T', function()
      float_term:toggle()
    end, { desc = 'Toggle floating terminal' })
  end,
}
