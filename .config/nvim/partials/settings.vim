" shared settings between normal neovim and VSCode extension
set gdefault
set smartcase
set ignorecase
set nostartofline
set lazyredraw
set termguicolors
set backspace=indent,eol,start
set nostartofline " Make j/k respect the columns
set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing
set clipboard+=unnamedplus

" Map leader switch to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" source vim config
" nnoremap <Leader>vc :source ~/.config/nvim/init.vim<CR>:echo "Reloaded .vimrc"<CR>

" Automatically source vimrc on save
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost vimrc source ~/.vimrc
  " autocmd BufWritePost vimrc AirlineRefresh
augroup END

" reset highlight
nnoremap <leader>h :noh<CR>

" quck-scope plugin highlight on button press
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" highlight yanked area
augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
augroup END

if exists('g:vscode')
  " VSCode extension

  " Commentary
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

  highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline

  " keybindings
  nnoremap <leader>s <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
else
  " ordinary neovim

  set title
  set cursorline
  set number
  set relativenumber
  set showmatch
  set mouse=a
  set encoding=utf-8
  set fileencoding=utf-8
  set nowrap
  set linebreak
  set autoindent
  set smartindent
  set expandtab
  set shiftwidth=2
  set pyxversion=3
  " Map jj to ESC
  imap jj <Esc>
  " Map Control-C to ESC
  imap <C-c> <Esc>
  " Alternate way to save
  nnoremap <leader>s :w<CR>

  " PLUGINS

  " autocomplete
  let g:deoplete#enable_at_startup = 1
  " <TAB>: completion.
  inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

endif
