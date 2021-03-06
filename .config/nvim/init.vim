source $HOME/.config/nvim/partials/plugins.vim

filetype plugin indent on
syntax on

let g:python3_host_prog = '/usr/local/bin/python3'

if exists('g:vscode')
  " VSCode extension
  
  source $HOME/.config/nvim/partials/settings.vim
else
  " ordinary neovim

  source $HOME/.config/nvim/partials/theme.vim
  source $HOME/.config/nvim/partials/airline.vim
  source $HOME/.config/nvim/partials/settings.vim
endif
