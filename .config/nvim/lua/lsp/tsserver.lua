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
      return utils.root_has_file(".prettierc.js")
    end,
  },

  -- update imports on file move
  update_imports_on_move = true,
  require_confirmation_on_move = false,
  watch_dir = nil,

  filter_out_diagnostics_by_code = { 80001 },
}

local M = {}

M.setup = function(on_attach)
  lspconfig.tsserver.setup({
    on_attach = function(client, bufnr)
      client.resolved_capabilities.document_formatting = false
      client.resolved_capabilities.document_range_formatting = false

      local ts_utils = require("nvim-lsp-ts-utils")
      ts_utils.setup(ts_utils_settings)
      ts_utils.setup_client(client)

      -- nvim-lsp-ts-utils
      utils.map('n', 'gf', ':TSLspRenameFile<cr>')
      utils.map('n', 'go', ':TSLspImportAll<cr>')
    end,

    -- https://github.com/typescript-language-server/typescript-language-server/issues/216
    -- https://github.com/microsoft/TypeScript/issues/37816
    -- fix go to definition opening promt with choosing react types or component types
    -- handlers = {
    --   ["textDocument/definition"] = function(_, method, result)
    --     vim.lsp.set_log_level("debug")
    --     vim.lsp.log.info(method, 'Test Test Test')
    --     if result == nil or vim.tbl_isempty(result) then
    --       local _ = vim.lsp.log.info() and vim.lsp.log.info(method, 'No location found')
    --       return nil
    --     end

    --     if vim.tbl_islist(result) then
    --       vim.lsp.util.jump_to_location(result[1])
    --       if #result > 1 then
    --         local isReactDTs = false
    --         for key, value in pairs(result) do
    --           if string.match(value.uri, "react/index.d.ts") then
    --             isReactDTs = true
    --             break
    --           end
    --         end
    --         if not isReactDTs then
    --           vim.lsp.util.set_qflist(util.locations_to_items(result))
    --           vim.api.nvim_command("copen")
    --           vim.api.nvim_command("wincmd p")
    --         end
    --       end
    --     else
    --       vim.lsp.util.jump_to_location(result)
    --     end

    --   end
    -- }
  })
end

return M
