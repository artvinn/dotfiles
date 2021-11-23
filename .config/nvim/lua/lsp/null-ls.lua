local null_ls = require("null-ls")
local b = null_ls.builtins

local eslint_opts = {
    condition = function(utils)
        return utils.root_has_file(".eslintrc.js")
    end,
    diagnostics_format = "[#{c}] #{m} (#{s})"
}

local sources = {
  null_ls.builtins.formatting.prettierd.with({
    condition = function(utils)
      return utils.root_has_file(".prettierrc.js") or utils.root_has_file(".prettierrc.json")
    end
  }),
  null_ls.builtins.diagnostics.eslint_d.with(eslint_opts),
  -- null_ls.builtins.diagnostics.write_good,
  -- null_ls.builtins.diagnostics.markdownlint,
}

local M = {}
M.setup = function(on_attach)
    null_ls.config({
        debug = true,
        sources = sources,
    })
    require("lspconfig")["null-ls"].setup({ on_attach = on_attach })
end

return M
