local null_ls = require("lsp.null-ls")

local border_opts = { border = "single", focusable = false, scope = "line" }

vim.diagnostic.config({ virtual_text = false, float = border_opts })

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  -- FORMAT ON SAVE
  if client.supports_method("textDocument/formatting") then
    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            timeout_ms = 5000,
            bufnr = bufnr
          })
        end
    })
  end
end

--Show diagnostics name
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = {
    source = "if_many",
    prefix = "»",
  },
  underline = true,
  signs = true,
})

-- local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

-- for type, icon in pairs(signs) do
--   local hl = "LspDiagnosticsSign" .. type
--   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
-- end

null_ls.setup(on_attach)
