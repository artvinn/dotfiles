-- automatically ensure that packer is installed on any machine configuration is cloned to --
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'nvim-lua/plenary.nvim'
  use 'hrsh7th/vim-vsnip'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      local ts = require 'nvim-treesitter.configs'
      ts.setup {ensure_installed = 'maintained', highlight = {enable = true}}
    end
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig'}
  }

  use {
    'neovim/nvim-lspconfig',
    requires = {'jose-elias-alvarez/nvim-lsp-ts-utils', 'jose-elias-alvarez/null-ls.nvim'},
    config = function()
      require'lspconfig'.html.setup{}
      require'lspconfig'.cssls.setup{}
      require'lspconfig'.jsonls.setup{}
      require'lspconfig'.rust_analyzer.setup{
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = "clippy"
          }
        }
      }

      require('lsp')
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-vsnip', 'windwp/nvim-autopairs'},
    config = function() 
      require('cmp_nvim_lsp').setup()
      local cmp = require('cmp')

      cmp.setup {
        min_length = 0,
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        mapping = {
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-n>"] = cmp.mapping.select_next_item(),
          -- ["<S-Space>"] = cmp.mapping.complete(), -- not sure what it does?
          ["<C-e>"] = cmp.mapping.close(),
        },
        sources = {
          { name = "nvim_lsp" },
          { name = 'path' }
        }
      }

      -- autopairs needs to be setup after cmp
      require('nvim-autopairs').setup({
        enable_check_bracket_line = false
      })
      require("nvim-autopairs.completion.cmp").setup({
        map_cr = true, --  map <CR> on insert mode
        map_complete = true, -- it will auto insert `(` after select function or method item
      })
    end
  }

  use {
    'sainnhe/sonokai',
    config = function()
      vim.g.sonokai_style = 'maia'
      vim.g.sonokai_enable_italic = 1
      vim.g.sonokai_better_performance = 1
      vim.cmd('colorscheme sonokai')
    end
  }

  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    after = {'sonokai'},
    config = function()
      require('lualine').setup({
        options = { theme = 'everforest'},
        sections = {
          lualine_a = {'mode'},
          lualine_b = {
            {'branch', icon = ''}
          },
          lualine_c = {'filename'},
          lualine_x = {'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        }
      })
    end
  }

  use {
    'unblevable/quick-scope',
    config = function()
      vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
    end
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      "nvim-lua/plenary.nvim"
    }
  }

  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      -- https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
      vim.wo.colorcolumn = "99999"

      require('indent_blankline').setup {
        filetype_exclude = {
          "help",
          "vimwiki",
          "man",
          "gitmessengerpopup",
          "diagnosticpopup",
          "lspinfo"
        },
        buftype_exclude = {"terminal"},
        use_treesitter = true,
        show_first_indent_level = false,
        show_trailing_blankline_indent = false,
        show_end_of_line = true,
        space_char_blankline = " ",
      }
    end
  }

  use {
    'christoomey/vim-tmux-navigator'
  }

end)

