return {
  'numToStr/Comment.nvim',
  opts = {
    -- Define custom keybindings
    toggler = {
      line = '<leader>/', -- Toggle line comment
      block = '<leader>\\', -- Toggle block comment
    },
    opleader = {
      line = '<leader>/', -- Operator-pending line comment
      block = '<leader>\\', -- Operator-pending block comment
    },
    -- Disable extra mappings to prevent potential conflicts
    -- mappings = {
    --    basic = true,  -- Enables basic mappings: gcc, gbc, etc.
    --     extra = false, -- Disables extra mappings: gco, gcO, gcA
    --  },
  },
  --  lazy = false, -- Ensure the plugin loads immediately
}
