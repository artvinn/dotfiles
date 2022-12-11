---------------------------------- HELPERS ----------------------------------
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local opt = vim.opt
local utils = require('utils')
local map = utils.map

---------------------------------- OPTIONS ----------------------------------
local indent = 2
local width = 110
opt.completeopt = {'menuone', 'noinsert', 'noselect'}  -- completion options
--opt.colorcolumn = tostring(width)       -- line length marker
opt.backup = false                      -- creates a backup file
opt.conceallevel = 0                    -- so that `` is visible in markdown files
opt.encoding = 'utf-8'                  -- character encoding used inside neovim
opt.fileencoding = 'utf-8'              -- the encoding written to a file
opt.title = true                        -- set the title of window to the value of titlestring
opt.hidden = true                       -- enable background buffers
opt.ignorecase = true                   -- ignore case
opt.joinspaces = false                  -- no double spaces with join
opt.cursorline = true			              -- highlight cursor line
opt.expandtab = true			              -- use spaces instead of tabs
opt.number = true                       -- show line numbers
opt.relativenumber = true               -- relative line number
opt.shiftround = true                   -- round indent
opt.scrolloff = 8                       -- lines of context
opt.sidescrolloff = 8                   -- columns of context
opt.smartcase = true                    -- do not ignore case with capitals
opt.smartindent = true                  -- insert indents automatically
opt.splitbelow = true                   -- put new windows below current
opt.splitright = true                   -- put new windows right of current
opt.signcolumn = 'yes'                  -- show sign column
opt.tabstop = indent                    -- number of spaces tabs count for
opt.shiftwidth = indent                 -- size of an indent
opt.termguicolors = true                -- true color support
opt.wildmode = {'list', 'longest'}      -- command-line completion mode
opt.wrap = false                        -- disable line wrap
opt.textwidth = width                   -- maximum width of text
opt.mouse = 'a'                         -- allow mouse to be used in neovim
opt.hlsearch = true                     -- highlight all matches on previous search pattern
opt.pumheight = 10                      -- pop up menu height
opt.clipboard = 'unnamedplus'           -- allows neovim to access the system clibpoard
opt.shortmess:append('co')               -- decrese message size
opt.showmode = false                    -- don't show sings like -- INSERT --
opt.undofile = true                     -- allow to undo changes after buffer has been closed
opt.ttimeout = true                     -- prevent delay when chaning modes
opt.ttimeoutlen = 50                    
opt.updatetime = 100                    -- speed up screen updating

-- highlight yanked area
cmd 'au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=350}'

---------------------------------- MAPPINGS ---------------------------------

-- map leader to space
g.mapleader = ' '

-- LSP (lspconfig)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
map('n', '<leader>ld', '<cmd>lua vim.diagnostic.open_float()<cr>')
map('n', '<leader>k', '<cmd>lua vim.lsp.buf.hover()<cr>')
map('n', '<leader>h', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>')

-- telescope
map('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
map('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
map('n', '<leader>fb', '<cmd>Telescope buffers<cr>')
map('n', '<leader>fr', '<cmd>Telescope registers<cr>')

-- reset search highlight
map('n', '<ESC>', '<cmd>noh<cr>')

-- split navigation
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
map('n', '<C-H>', '<C-W><C-H>')

-- nvim-tree
map('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')

-- remap escape
map('i', 'kj', '<ESC>')

-- alternate way to save
map('n', '<leader>w', ':w<cr>')

-- format
map('n', '<leader>fmt', '<cmd>lua vim.lsp.buf.format({ timeout_ms = 5000 })<cr>')

require('plugins')
