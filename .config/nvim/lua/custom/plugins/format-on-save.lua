return {
  "elentok/format-on-save.nvim",
  config = function()
    local format_on_save = require("format-on-save")
    local formatters = require("format-on-save.formatters")

    format_on_save.setup({
      exclude_path_patterns = {
        ".git",
        "/node_modules/",
        ".local/share/nvim/lazy",
      },
      formatter_by_ft = {
        lua = formatters.lsp,
        yaml = formatters.lsp,
        css = formatters.lsp,
        html = formatters.lsp,
        json = formatters.lsp,
        javascript = formatters.prettierd,
        markdown = formatters.prettierd,
        typescript = formatters.prettierd,
        typescriptreact = formatters.prettierd,
        svelte = formatters.prettierd
      },
      fallback_formatter = {
        formatters.remove_trailing_whitespace,
        formatters.prettierd,
      },
    })
  end,
}
