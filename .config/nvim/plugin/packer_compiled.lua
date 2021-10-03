-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/artjomvinnikov/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/artjomvinnikov/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/artjomvinnikov/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/artjomvinnikov/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/artjomvinnikov/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n›\2\0\0\4\0\f\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\0\5\19use_treesitter\2\25space_char_blankline\6 \21show_end_of_line\2#show_trailing_blankline_indent\1\28show_first_indent_level\1\1\a\0\0\thelp\fvimwiki\bman\22gitmessengerpopup\20diagnosticpopup\flspinfo\nsetup\21indent_blankline\frequire\n99999\16colorcolumn\awo\bvim\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nπ\2\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\3\0005\5\t\0>\5\1\4=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\1\0\vbranch\ticon\bÔêò\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\1\ntheme\15everforest\nsetup\flualine\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/opt/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nŒ\3\0\0\a\0\21\00026\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\2\0005\3\4\0005\4\a\0009\5\5\0009\5\6\5B\5\1\2=\5\b\0049\5\5\0009\5\t\5B\5\1\2=\5\n\0049\5\5\0009\5\6\5B\5\1\2=\5\v\0049\5\5\0009\5\t\5B\5\1\2=\5\f\0049\5\5\0009\5\r\5B\5\1\2=\5\14\4=\4\5\0034\4\3\0005\5\15\0>\5\1\4=\4\16\3B\1\2\0016\1\0\0'\3\17\0B\1\2\0029\1\2\0015\3\18\0B\1\2\0016\1\0\0'\3\19\0B\1\2\0029\1\2\0015\3\20\0B\1\2\1K\0\1\0\1\0\2\17map_complete\2\vmap_cr\2\"nvim-autopairs.completion.cmp\1\0\1\30enable_check_bracket_line\1\19nvim-autopairs\fsources\1\0\1\tname\rnvim_lsp\n<C-e>\nclose\n<C-n>\n<C-p>\n<Tab>\21select_next_item\f<S-Tab>\1\0\0\21select_prev_item\fmapping\1\0\1\15min_length\3\0\bcmp\nsetup\17cmp_nvim_lsp\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nú\2\0\2\5\0\t\0\0259\2\0\0009\2\1\2\15\0\2\0X\3\20Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0B\2\2\0016\2\2\0009\2\3\0029\2\4\2'\4\6\0B\2\2\0016\2\2\0009\2\3\0029\2\4\2'\4\a\0B\2\2\0016\2\2\0009\2\3\0029\2\4\2'\4\b\0B\2\2\1K\0\1\0\16augroup ENDGautocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()\24autocmd! * <buffer>\19augroup Format\17nvim_command\bapi\bvim\24document_formatting\26resolved_capabilities√\v\1\0\t\0000\0X6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\1\0B\1\2\0029\1\2\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\4\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\5\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\6\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\a\0019\1\3\0015\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\3B\1\2\0013\1\r\0006\2\0\0'\4\1\0B\2\2\0029\2\14\0029\2\3\0025\4\15\0=\1\16\0045\5\17\0=\5\18\0045\5\30\0005\6\28\0005\a\19\0005\b\20\0=\b\21\a5\b\22\0=\b\23\a5\b\24\0=\b\25\a5\b\26\0=\b\27\a=\a\29\6=\6\31\0055\6 \0=\6\18\0055\6&\0005\a!\0005\b\"\0=\b\23\a5\b#\0=\b\21\a5\b$\0=\b%\a=\a'\0065\a(\0005\b)\0=\b\23\a5\b*\0=\b%\a=\a+\6=\6,\0055\6-\0=\6.\5=\5/\4B\2\2\1K\0\1\0\17init_options\20formatFiletypes\1\0\t\tjson\rprettier\20javascriptreact\rprettier\15javascript\rprettier\rmarkdown\rprettier\tscss\rprettier\tless\rprettier\bcss\rprettier\20typescriptreact\rprettier\15typescript\rprettier\15formatters\rprettier\1\3\0\0\19.prettierrc.js\16.prettierrc\1\3\0\0\21--stdin-filepath\14%filename\1\0\1\fcommand\rprettier\reslint_d\1\0\0\18requiredFiles\1\3\0\0\14.eslintrc\19.eslintrc.json\1\2\0\0\t.git\1\5\0\0\f--stdin\21--stdin-filename\14%filename\20--fix-to-stdout\1\0\1\fcommand\reslint_d\1\0\4\20typescriptreact\veslint\20javascriptreact\veslint\15javascript\veslint\15typescript\veslint\flinters\1\0\0\veslint\1\0\0\15securities\1\0\2\4\0ÄÄÄÄ\4\nerror\4\0ÄÄ¿ˇ\3\fwarning\14parseJson\1\0\a\rsecurity\rseverity\15errorsRoot\17[0].messages\fmessage$[eslint] ${message} [${ruleId}]\14endColumn\14endColumn\fendLine\fendLine\vcolumn\vcolumn\tline\tline\targs\1\6\0\0\f--stdin\21--stdin-filename\14%filepath\r--format\tjson\17rootPatterns\1\2\0\0\t.git\1\0\3\rdebounce\3d\15sourceName\reslint_d\fcommand\reslint_d\14filetypes\1\v\0\0\15javascript\20javascriptreact\tjson\15typescript\20typescriptreact\bcss\tless\tscss\rmarkdown\vpandoc\14on_attach\1\0\0\17diagnosticls\0\rsettings\1\0\0\18rust-analyzer\1\0\0\1\0\1\16checkOnSave\vclippy\18rust_analyzer\vjsonls\ncssls\thtml\nsetup\rtsserver\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nÖ\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["quick-scope"] = {
    config = { "\27LJ\2\nB\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\bvim\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  sonokai = {
    after = { "lualine.nvim" },
    loaded = true,
    only_config = true
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nú\2\0\2\5\0\t\0\0259\2\0\0009\2\1\2\15\0\2\0X\3\20Ä6\2\2\0009\2\3\0029\2\4\2'\4\5\0B\2\2\0016\2\2\0009\2\3\0029\2\4\2'\4\6\0B\2\2\0016\2\2\0009\2\3\0029\2\4\2'\4\a\0B\2\2\0016\2\2\0009\2\3\0029\2\4\2'\4\b\0B\2\2\1K\0\1\0\16augroup ENDGautocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()\24autocmd! * <buffer>\19augroup Format\17nvim_command\bapi\bvim\24document_formatting\26resolved_capabilities√\v\1\0\t\0000\0X6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\1\0B\1\2\0029\1\2\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\4\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\5\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\6\0019\1\3\0014\3\0\0B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\a\0019\1\3\0015\3\v\0005\4\t\0005\5\b\0=\5\n\4=\4\f\3B\1\2\0013\1\r\0006\2\0\0'\4\1\0B\2\2\0029\2\14\0029\2\3\0025\4\15\0=\1\16\0045\5\17\0=\5\18\0045\5\30\0005\6\28\0005\a\19\0005\b\20\0=\b\21\a5\b\22\0=\b\23\a5\b\24\0=\b\25\a5\b\26\0=\b\27\a=\a\29\6=\6\31\0055\6 \0=\6\18\0055\6&\0005\a!\0005\b\"\0=\b\23\a5\b#\0=\b\21\a5\b$\0=\b%\a=\a'\0065\a(\0005\b)\0=\b\23\a5\b*\0=\b%\a=\a+\6=\6,\0055\6-\0=\6.\5=\5/\4B\2\2\1K\0\1\0\17init_options\20formatFiletypes\1\0\t\tjson\rprettier\20javascriptreact\rprettier\15javascript\rprettier\rmarkdown\rprettier\tscss\rprettier\tless\rprettier\bcss\rprettier\20typescriptreact\rprettier\15typescript\rprettier\15formatters\rprettier\1\3\0\0\19.prettierrc.js\16.prettierrc\1\3\0\0\21--stdin-filepath\14%filename\1\0\1\fcommand\rprettier\reslint_d\1\0\0\18requiredFiles\1\3\0\0\14.eslintrc\19.eslintrc.json\1\2\0\0\t.git\1\5\0\0\f--stdin\21--stdin-filename\14%filename\20--fix-to-stdout\1\0\1\fcommand\reslint_d\1\0\4\20typescriptreact\veslint\20javascriptreact\veslint\15javascript\veslint\15typescript\veslint\flinters\1\0\0\veslint\1\0\0\15securities\1\0\2\4\0ÄÄÄÄ\4\nerror\4\0ÄÄ¿ˇ\3\fwarning\14parseJson\1\0\a\rsecurity\rseverity\15errorsRoot\17[0].messages\fmessage$[eslint] ${message} [${ruleId}]\14endColumn\14endColumn\fendLine\fendLine\vcolumn\vcolumn\tline\tline\targs\1\6\0\0\f--stdin\21--stdin-filename\14%filepath\r--format\tjson\17rootPatterns\1\2\0\0\t.git\1\0\3\rdebounce\3d\15sourceName\reslint_d\fcommand\reslint_d\14filetypes\1\v\0\0\15javascript\20javascriptreact\tjson\15typescript\20typescriptreact\bcss\tless\tscss\rmarkdown\vpandoc\14on_attach\1\0\0\17diagnosticls\0\rsettings\1\0\0\18rust-analyzer\1\0\0\1\0\1\16checkOnSave\vclippy\18rust_analyzer\vjsonls\ncssls\thtml\nsetup\rtsserver\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\n≠\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\26sonokai_enable_italic\tmaia\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n›\2\0\0\4\0\f\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\0\5\19use_treesitter\2\25space_char_blankline\6 \21show_end_of_line\2#show_trailing_blankline_indent\1\28show_first_indent_level\1\1\a\0\0\thelp\fvimwiki\bman\22gitmessengerpopup\20diagnosticpopup\flspinfo\nsetup\21indent_blankline\frequire\n99999\16colorcolumn\awo\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nŒ\3\0\0\a\0\21\00026\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\1\2\0005\3\4\0005\4\a\0009\5\5\0009\5\6\5B\5\1\2=\5\b\0049\5\5\0009\5\t\5B\5\1\2=\5\n\0049\5\5\0009\5\6\5B\5\1\2=\5\v\0049\5\5\0009\5\t\5B\5\1\2=\5\f\0049\5\5\0009\5\r\5B\5\1\2=\5\14\4=\4\5\0034\4\3\0005\5\15\0>\5\1\4=\4\16\3B\1\2\0016\1\0\0'\3\17\0B\1\2\0029\1\2\0015\3\18\0B\1\2\0016\1\0\0'\3\19\0B\1\2\0029\1\2\0015\3\20\0B\1\2\1K\0\1\0\1\0\2\17map_complete\2\vmap_cr\2\"nvim-autopairs.completion.cmp\1\0\1\30enable_check_bracket_line\1\19nvim-autopairs\fsources\1\0\1\tname\rnvim_lsp\n<C-e>\nclose\n<C-n>\n<C-p>\n<Tab>\21select_next_item\f<S-Tab>\1\0\0\21select_prev_item\fmapping\1\0\1\15min_length\3\0\bcmp\nsetup\17cmp_nvim_lsp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nÖ\1\0\0\5\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\3B\1\2\1K\0\1\0\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\15maintained\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\2\nB\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\bvim\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nπ\2\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\3\0005\5\t\0>\5\1\4=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\1\0\vbranch\ticon\bÔêò\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\1\ntheme\15everforest\nsetup\flualine\frequire\0", "config", "lualine.nvim")

time([[Sequenced loading]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
