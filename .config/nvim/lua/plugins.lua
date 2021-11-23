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
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup{}
    end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      vim.g.nvim_tree_gitignore = 1;
      require'nvim-tree'.setup {}
    end
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
      -- nvim-cmp supports additional completion capabilities
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      require'lspconfig'.html.setup{
        filetypes = {"html", "njk"}
      }

      require'lspconfig'.cssls.setup{
        capabilities = capabilities,
      }

      require'lspconfig'.rust_analyzer.setup{
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = "clippy"
          }
        }
      }

      require'lspconfig'.jsonls.setup{
        on_attach = function(client)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false
        end
      }

      require'lspconfig'.svelte.setup{
        on_attach = function(client)
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false
        end
      }

      require('lsp')
    end
  }

  use {
    'hrsh7th/nvim-cmp',
    requires = {'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-path', 'hrsh7th/cmp-vsnip', 'windwp/nvim-autopairs', 'onsails/lspkind-nvim'},
    config = function() 
      require('cmp_nvim_lsp').setup()
      local cmp = require('cmp')
      local lspkind = require('lspkind')

      cmp.setup {
        min_length = 0,
        snippet = {
          expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
          end,
        },
        mapping = {
          ['<Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            else
              fallback()
            end
          end,
          ['<S-Tab>'] = function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end,
          ['<C-Space>'] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.close(),
          ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
          })
        },
        formatting = {
          format = lspkind.cmp_format({ with_text = true, maxwidth = 50 })
        },
        sources = {
          { name = "nvim_lsp" },
          { name = 'path' },
          { name = 'vsnip' }
        }
      }

      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      cmp.event:on( 
        'confirm_done',
        cmp_autopairs.on_confirm_done(
          { map_char = { tex = '{' } }
        )
      )

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

