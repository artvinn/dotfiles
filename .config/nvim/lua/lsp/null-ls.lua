local null_ls = require("null-ls")
local b = null_ls.builtins

local null_ls = require("null-ls")
local sources = {
  null_ls.builtins.formatting.prettierd.with({
    condition = function(utils)
      return utils.root_has_file(".prettierrc.js")
    end
  }),
  null_ls.builtins.diagnostics.eslint_d,
  null_ls.builtins.diagnostics.write_good,
  null_ls.builtins.diagnostics.markdownlint,
  null_ls.builtins.code_actions.gitsigns,
}

local M = {}
M.setup = function(on_attach)
    null_ls.config({
        -- debug = true,
        sources = sources,
    })
    require("lspconfig")["null-ls"].setup({ on_attach = on_attach })
end

return M
