local null_ls = require("lsp.null-ls")
local tsserver = require("lsp.tsserver")

local on_attach = function(client, bufnr)
  if client.resolved_capabilities.document_formatting then
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  end
end

tsserver.setup(on_attach)
null_ls.setup(on_attach)
