-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Disables search highlighting on cursor move
  'romainl/vim-cool',

  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      scope = { enabled = false },
    },
  },

  -- theme
  {
    'sainnhe/sonokai',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.sonokai_enable_italic = false
      vim.g.sonokai_style = 'maia'
      vim.g.sonokai_better_performance = 1
      vim.cmd.colorscheme 'sonokai'
    end,
  },
}
