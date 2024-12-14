return {
  "max397574/better-escape.nvim",
  event = "InsertEnter",
  config = function()
    require("better_escape").setup({
      default_mappings = false,
      mappings = {
        i = {
          k = {
            j = "<Esc>"
          }
        },
        v = {
          k = {
            j = "<Esc>"
          }
        },
      },
    })
  end,
}
