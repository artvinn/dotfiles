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
set splitbelow
set splitright
set shortmess+=c

" dein package manager auto recache
let g:dein#auto_recache = 1

" persistent undo
set undodir=~/.cache/nvim/undodir
set undofile

" Map leader switch to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" source vim config
nnoremap <Leader>vc :source ~/.config/nvim/init.vim<CR>:echo "Reloaded .vimrc"<CR>

" reset highlight
nnoremap <silent><esc> :noh<CR>

" split naviation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" highlight yanked area
augroup highlight_yank
  autocmd!
  au TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=350}
augroup END

" quck-scope plugin highlight on button press
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

if exists('g:vscode')
  " VSCode extension

  " Commentary
  xmap gc  <Plug>VSCodeCommentary
  nmap gc  <Plug>VSCodeCommentary
  omap gc  <Plug>VSCodeCommentary
  nmap gcc <Plug>VSCodeCommentaryLine

  " keybindings
  nnoremap <leader>s <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
  nnoremap <silent>K <Cmd>call VSCodeNotify('editor.action.showHover')<CR>

  " quick-scope char colors
  highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
  highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
else
  " ordinary neovim

  set hidden
  set title
  set nobackup
  set nowritebackup
  set cursorline
  set number
  set relativenumber
  set mouse=a
  set encoding=utf-8
  set fileencoding=utf-8
  set nowrap
  set linebreak
  set autoindent
  set smartindent
  set expandtab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set pyxversion=3
  set updatetime=300
  set signcolumn=yes
  set noshowmode
  
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

  " fzf mapping
  nnoremap <silent> <C-p> :Files<CR>
  nnoremap <silent> <leader>f :Rg<CR>

  " ripgrep
  set grepprg=rg\ --vimgrep\ --smart-case\ --hidden\ --follow

  " coc
  autocmd FileType typescript let b:coc_root_patterns = ['.git', '.env']
  let g:coc_global_extensions = [ 'coc-tsserver', 'coc-css', 'coc-json', 'coc-explorer', 'coc-rust-analyzer']

  if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
    let g:coc_global_extensions += ['coc-prettier']
  endif

  if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
    let g:coc_global_extensions += ['coc-eslint']
  endif

  if filereadable('.stylelintrc')
    let g:coc_global_extensions += ['coc-stylelintplus']
  endif

  nmap <leader>e :CocCommand explorer<CR>
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gr <Plug>(coc-references)
  nmap <leader>rn <Plug>(coc-rename)

  " Use K to show documentation in preview window.
  nnoremap <silent> K :call <SID>show_documentation()<CR>

  function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
      execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
      call CocActionAsync('doHover')
    else
      execute '!' . &keywordprg . " " . expand('<cword>')
    endif
  endfunction

endif
