local null_ls = require("null-ls")
local b = null_ls.builtins

local sources = {
  null_ls.builtins.formatting.prettierd.with({
    condition = function(utils)
      return utils.root_has_file({ "prettierrc.json", ".prettierrc" })
    end,
    filetypes = { "html", "json", "svelte", "markdown", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "prisma" },
  }),
  -- null_ls.builtins.diagnostics.write_good,
  -- null_ls.builtins.diagnostics.markdownlint,
}

local M = {}
M.setup = function(on_attach)
    null_ls.setup({
      debug = true,
      root_dir = require("null-ls.utils").root_pattern(".git", "package.json"),
      sources = sources,
      on_attach = on_attach 
    })
end

return M
