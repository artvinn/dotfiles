return {
  'mfussenegger/nvim-lint',
  event = {
    'BufReadPre',
    'BufNewFile',
  },
  config = function()
    local lint = require 'lint'

    lint.linters_by_ft = {
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
      javascriptreact = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },
      svelte = { 'eslint_d' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave', 'TextChanged' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    -- eslint --fix, and run LSP lint
    vim.keymap.set('n', '<leader>lf', function()
      vim.cmd 'echohl WarningMsg | echo "Running eslint --fix..." | echohl None'
      vim.cmd 'silent! EslintFixAll'
      vim.schedule(function()
        require('lint').try_lint() -- Run nvim-lint
        vim.cmd 'echo ""'
      end)
    end, { desc = 'eslint fix and lint', silent = true })
  end,
}
