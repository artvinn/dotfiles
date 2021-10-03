local finders = {}

-- Dropdown list
local center_list = require'telescope.themes'.get_dropdown({
  initial_mode = 'insert';
  winblend = 20;
  prompt_title = false;
  previewer = false;
  layout_config = {
    height = 20;
    width = 0.6;
  };
  borderchars = {
    { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
    results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
    preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
  },
})

-- Settings for with preview option
local with_preview = {
  initial_mode = 'insert';
  winblend = 20;
  show_line = false,
  results_title = false,
  preview_title = false,
  layout_config = {
    preview_width = 0.5,
  },
  borderchars = {
    { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    prompt = {"─", "│", " ", "│", '┌', '┐', "│", "│"},
    results = {"─", "│", "─", "│", "├", "┤", "┘", "└"},
    preview = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
  },
}

-- Find in neovim config with center theme
finders.find_files = function()
  local opts = vim.deepcopy(center_list)
  require'telescope.builtin'.fd(opts)
end

-- Find files with_preview settings
finders.live_grep = function()
  local opts = vim.deepcopy(with_preview)
  require'telescope.builtin'.fd(opts)
end

return finders
