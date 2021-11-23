local lspconfig = require("lspconfig")
local utils = require('utils')

local ts_utils_settings = {
  debug = false,
  disable_commands = false,
  enable_import_on_completion = true,
  import_all_timeout = 5000, -- ms

  -- eslint
  eslint_enable_code_actions = true,
  eslint_enable_disable_comments = true,
  eslint_bin = "eslint_d",
  eslint_config_fallback = nil,
  eslint_enable_diagnostics = true,

  -- formatting
  enable_formatting = true,
  formatter = "prettierd",
  formatter_opts = {
    condition = function(utils)
      return utils.root_has_file(".prettierrc.js") or utils.root_has_file(".prettierrc.json")
    end,
  },

  -- update imports on file move
  update_imports_on_move = true,
  require_confirmation_on_move = false,
  watch_dir = nil,

  filter_out_diagnostics_by_code = { 80001 },
  -- filter_out_diagnostics_by_severity = { "hint" }
}

local M = {}

M.setup = function(on_attach)
  local ts_utils = require("nvim-lsp-ts-utils")

  lspconfig.tsserver.setup({
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false

      on_attach(client, bufnr)

      ts_utils.setup(ts_utils_settings)
      ts_utils.setup_client(client)

      -- nvim-lsp-ts-utils
      utils.map('n', 'gf', ':TSLspRenameFile<cr>')
      utils.map('n', 'go', ':TSLspImportAll<cr>')
    end,
  })
end

return M
