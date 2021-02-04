if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " vim surround
  call dein#add('tpope/vim-surround')

  " vim commentary
  call dein#add('tpope/vim-commentary')

  " quick-scope
  call dein#add('unblevable/quick-scope')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  if !exists('g:vscode')
    " Themes
    call dein#add('joshdick/onedark.vim')
    " Better Syntax Support
    call dein#add('sheerun/vim-polyglot')
    " Powerline
    call dein#add('vim-airline/vim-airline')
    call dein#add('vim-airline/vim-airline-themes')

    " fzf fuzzy search
    call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
    call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

    " coc
    call dein#add('neoclide/coc.nvim', { 'branch': 'release' })

    " JS, TS
    call dein#add('evanleck/vim-svelte')
    call dein#add('pangloss/vim-javascript')
    call dein#add('HerringtonDarkholme/yats.vim')

    if !has('nvim')
      call dein#add('roxma/nvim-yarp')
      call dein#add('roxma/vim-hug-neovim-rpc')
    endif
  endif

  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
