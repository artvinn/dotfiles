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
        css = formatters.eslint,
        html = formatters.eslint_d_fix,
        json = formatters.eslint_d_fix,
        jsonc = formatters.eslint_d_fix,
        javascript = formatters.eslint_d_fix,
        markdown = formatters.eslint_d_fix,
        typescript = formatters.eslint_d_fix,
        typescriptreact = formatters.eslint_d_fix,
        svelte = formatters.eslint_d_fix,
        astro = formatters.lsp
      },
      fallback_formatter = {
        formatters.remove_trailing_whitespace,
        formatters.eslint_d_fix,
        formatters.lsp
      },
    })
  end,
}
