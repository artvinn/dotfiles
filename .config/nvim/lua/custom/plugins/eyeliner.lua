return {
  'jinh0/eyeliner.nvim',
  config = function()
    require 'eyeliner'.setup {
      highlight_on_key = true, -- show highlights only after keypress
    }

    vim.api.nvim_set_hl(0, 'EyelinerPrimary', { fg = '#03fc31', bold = true, underline = true })
    vim.api.nvim_set_hl(0, 'EyelinerSecondary', { fg = '#c7eced', underline = true })
  end
}
