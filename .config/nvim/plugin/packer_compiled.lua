-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

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
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
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
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n›\2\0\0\4\0\f\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\0\5\25space_char_blankline\6 \21show_end_of_line\2#show_trailing_blankline_indent\1\28show_first_indent_level\1\19use_treesitter\2\1\a\0\0\thelp\fvimwiki\bman\22gitmessengerpopup\20diagnosticpopup\flspinfo\nsetup\21indent_blankline\frequire\n99999\16colorcolumn\awo\bvim\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nπ\2\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\3\0005\5\t\0>\5\1\4=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\1\0\vbranch\ticon\bÔêò\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\1\ntheme\15everforest\nsetup\flualine\frequire\0" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/hoob3rt/lualine.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_prev_item\fvisibleù\5\1\0\v\0+\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\2\0005\4\5\0005\5\a\0003\6\6\0=\6\b\5=\5\t\0045\5\v\0003\6\n\0=\6\f\0053\6\r\0=\6\14\0059\6\15\0009\6\16\6B\6\1\2=\6\17\0059\6\15\0009\6\18\6B\6\1\2=\6\19\0059\6\15\0009\6\20\0065\b\23\0009\t\21\0009\t\22\t=\t\24\bB\6\2\2=\6\25\5=\5\15\0045\5\28\0009\6\26\0015\b\27\0B\6\2\2=\6\29\5=\5\30\0044\5\4\0005\6\31\0>\6\1\0055\6 \0>\6\2\0055\6!\0>\6\3\5=\5\"\4B\2\2\0016\2\0\0'\4#\0B\2\2\0029\3$\0\18\5\3\0009\3%\3'\6&\0009\a'\0025\t)\0005\n(\0=\n*\tB\a\2\0A\3\2\0012\0\0ÄK\0\1\0\rmap_char\1\0\0\1\0\1\btex\6{\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\fsources\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\1\0\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\fmapping\f<S-Tab>\0\n<Tab>\1\0\0\0\fsnippet\vexpand\1\0\0\0\1\0\1\15min_length\3\0\flspkind\bcmp\nsetup\17cmp_nvim_lsp\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilities≤\6\1\0\6\0'\0g6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0009\1\a\0009\1\b\0019\1\t\1+\2\2\0=\2\n\0016\1\4\0'\3\v\0B\1\2\0029\1\f\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\14\0019\1\r\0015\3\15\0=\0\16\0033\4\17\0=\4\18\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\19\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\20\0019\1\r\0015\3\22\0005\4\21\0=\4\23\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\24\0019\1\r\0015\3\25\0=\0\16\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\26\0019\1\r\0015\3\30\0005\4\28\0005\5\27\0=\5\29\4=\4\31\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1 \0019\1\r\0015\3\"\0005\4!\0=\4#\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1$\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1%\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1&\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\1\0B\1\2\1K\0\1\0\vsvelte\vjsonls\rprismals\bcmd\1\0\0\1\2\0\0000/usr/local/lib/elixir-ls/language_server.sh\relixirls\rsettings\1\0\0\18rust-analyzer\1\0\0\1\0\1\16checkOnSave\vclippy\18rust_analyzer\1\0\0\ncssls\14filetypes\1\0\0\1\4\0\0\thtml\bnjk\theex\thtml\npylsp\14on_attach\0\17capabilities\1\0\0\rtsserver\nsetup\nastro\14lspconfig\19snippetSupport\19completionItem\15completion\17textDocument\25default_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\bgit\1\0\0\1\0\2\venable\2\vignore\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n±\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\3B\1\2\1K\0\1\0\14highlight\fdisable\1\2\0\0\thtml\1\0\1\venable\2\vindent\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["quick-scope"] = {
    config = { "\27LJ\2\nB\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\bvim\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  sonokai = {
    after = { "lualine.nvim" },
    config = { "\27LJ\2\n≠\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\26sonokai_enable_italic\tmaia\18sonokai_style\6g\bvim\0" },
    loaded = true,
    only_config = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtabout\frequire\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-hardtime"] = {
    config = { "\27LJ\2\nV\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1 \3=\1\3\0K\0\1\0\21hardtime_timeout\24hardtime_default_on\6g\bvim\0" },
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-hardtime",
    url = "https://github.com/takac/vim-hardtime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vscode-elixir-snippets"] = {
    loaded = true,
    path = "/Users/artjomvinnikov/.local/share/nvim/site/pack/packer/start/vscode-elixir-snippets",
    url = "https://github.com/florinpatrascu/vscode-elixir-snippets"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: tabout.nvim
time([[Config for tabout.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vtabout\frequire\0", "config", "tabout.nvim")
time([[Config for tabout.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nA\0\1\3\0\2\0\0049\1\0\0+\2\1\0=\2\1\1K\0\1\0\24document_formatting\26resolved_capabilities≤\6\1\0\6\0'\0g6\0\0\0009\0\1\0009\0\2\0009\0\3\0B\0\1\0026\1\4\0'\3\5\0B\1\2\0029\1\6\1\18\3\0\0B\1\2\2\18\0\1\0009\1\a\0009\1\b\0019\1\t\1+\2\2\0=\2\n\0016\1\4\0'\3\v\0B\1\2\0029\1\f\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\14\0019\1\r\0015\3\15\0=\0\16\0033\4\17\0=\4\18\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\19\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\20\0019\1\r\0015\3\22\0005\4\21\0=\4\23\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\24\0019\1\r\0015\3\25\0=\0\16\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1\26\0019\1\r\0015\3\30\0005\4\28\0005\5\27\0=\5\29\4=\4\31\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1 \0019\1\r\0015\3\"\0005\4!\0=\4#\3B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1$\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1%\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\v\0B\1\2\0029\1&\0019\1\r\0014\3\0\0B\1\2\0016\1\4\0'\3\1\0B\1\2\1K\0\1\0\vsvelte\vjsonls\rprismals\bcmd\1\0\0\1\2\0\0000/usr/local/lib/elixir-ls/language_server.sh\relixirls\rsettings\1\0\0\18rust-analyzer\1\0\0\1\0\1\16checkOnSave\vclippy\18rust_analyzer\1\0\0\ncssls\14filetypes\1\0\0\1\4\0\0\thtml\bnjk\theex\thtml\npylsp\14on_attach\0\17capabilities\1\0\0\rtsserver\nsetup\nastro\14lspconfig\19snippetSupport\19completionItem\15completion\17textDocument\25default_capabilities\17cmp_nvim_lsp\frequire\29make_client_capabilities\rprotocol\blsp\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n]\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\bgit\1\0\0\1\0\2\venable\2\vignore\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: vim-hardtime
time([[Config for vim-hardtime]], true)
try_loadstring("\27LJ\2\nV\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1 \3=\1\3\0K\0\1\0\21hardtime_timeout\24hardtime_default_on\6g\bvim\0", "config", "vim-hardtime")
time([[Config for vim-hardtime]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n±\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0005\5\a\0=\5\b\4=\4\t\3B\1\2\1K\0\1\0\14highlight\fdisable\1\2\0\0\thtml\1\0\1\venable\2\vindent\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n›\2\0\0\4\0\f\0\0156\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0005\2\b\0005\3\a\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\20buftype_exclude\1\2\0\0\rterminal\21filetype_exclude\1\0\5\25space_char_blankline\6 \21show_end_of_line\2#show_trailing_blankline_indent\1\28show_first_indent_level\1\19use_treesitter\2\1\a\0\0\thelp\fvimwiki\bman\22gitmessengerpopup\20diagnosticpopup\flspinfo\nsetup\21indent_blankline\frequire\n99999\16colorcolumn\awo\bvim\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: quick-scope
time([[Config for quick-scope]], true)
try_loadstring("\27LJ\2\nB\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\5\0\0\6f\6F\6t\6T\25qs_highlight_on_keys\6g\bvim\0", "config", "quick-scope")
time([[Config for quick-scope]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\n≠\1\0\0\3\0\b\0\0176\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\5\0006\0\0\0009\0\6\0'\2\a\0B\0\2\1K\0\1\0\24colorscheme sonokai\bcmd\31sonokai_better_performance\26sonokai_enable_italic\tmaia\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_next_item\fvisibleR\0\1\3\1\2\0\f-\1\0\0009\1\0\1B\1\1\2\15\0\1\0X\2\4Ä-\1\0\0009\1\1\1B\1\1\1X\1\2Ä\18\1\0\0B\1\1\1K\0\1\0\0¿\21select_prev_item\fvisibleù\5\1\0\v\0+\0E6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0026\1\0\0'\3\4\0B\1\2\0029\2\2\0005\4\5\0005\5\a\0003\6\6\0=\6\b\5=\5\t\0045\5\v\0003\6\n\0=\6\f\0053\6\r\0=\6\14\0059\6\15\0009\6\16\6B\6\1\2=\6\17\0059\6\15\0009\6\18\6B\6\1\2=\6\19\0059\6\15\0009\6\20\0065\b\23\0009\t\21\0009\t\22\t=\t\24\bB\6\2\2=\6\25\5=\5\15\0045\5\28\0009\6\26\0015\b\27\0B\6\2\2=\6\29\5=\5\30\0044\5\4\0005\6\31\0>\6\1\0055\6 \0>\6\2\0055\6!\0>\6\3\5=\5\"\4B\2\2\0016\2\0\0'\4#\0B\2\2\0029\3$\0\18\5\3\0009\3%\3'\6&\0009\a'\0025\t)\0005\n(\0=\n*\tB\a\2\0A\3\2\0012\0\0ÄK\0\1\0\rmap_char\1\0\0\1\0\1\btex\6{\20on_confirm_done\17confirm_done\aon\nevent\"nvim-autopairs.completion.cmp\fsources\1\0\1\tname\nvsnip\1\0\1\tname\tpath\1\0\1\tname\rnvim_lsp\15formatting\vformat\1\0\0\1\0\2\14with_text\2\rmaxwidth\0032\15cmp_format\t<CR>\rbehavior\1\0\1\vselect\2\vInsert\20ConfirmBehavior\fconfirm\n<C-e>\nclose\14<C-Space>\rcomplete\fmapping\f<S-Tab>\0\n<Tab>\1\0\0\0\fsnippet\vexpand\1\0\0\0\1\0\1\15min_length\3\0\flspkind\bcmp\nsetup\17cmp_nvim_lsp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nπ\2\0\0\6\0\20\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0034\4\3\0005\5\t\0>\5\1\4=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\2B\0\2\1K\0\1\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\2\0\0\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\1\0\vbranch\ticon\bÔêò\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\1\ntheme\15everforest\nsetup\flualine\frequire\0", "config", "lualine.nvim")

time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
